import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/presentation/bloc/image_feed_bloc.dart';
import 'package:image_feed/features/presentation/widgets/image_container_widget.dart';

class ImageFeedScreen extends StatefulWidget {
  const ImageFeedScreen({super.key});

  @override
  State<ImageFeedScreen> createState() => _ImageFeedScreenState();
}

class _ImageFeedScreenState extends State<ImageFeedScreen> {
  int _topImageIndex = 0;
  int _previousTopImageIndex = 0;
  double _dragOffset = 0;
  final int _visibleImageCount = 5;

  void _loadMorePhotos() {
    context.read<ImageFeedBloc>().add(const ImageFeedEvent.loadMorePhotos());
  }

  void _onSwipe(SwipeDirection direction, List<Photo> photos) {
    Timer(
      const Duration(milliseconds: 300),
      () => setState(() {
        switch (direction) {
          case SwipeDirection.up:
            if (_topImageIndex < photos.length - 1) {
              _previousTopImageIndex = _topImageIndex;
              _topImageIndex++;
              if (_topImageIndex >= photos.length - 3) {
                _loadMorePhotos();
              }
            }
          case SwipeDirection.down:
            if (_topImageIndex > 0) {
              if (_topImageIndex - 1 != 0) {
                _previousTopImageIndex--;
              }
              _topImageIndex--;
            }
        }
        _dragOffset = 0;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(backgroundColor: const Color(0xFFFFFFFF), elevation: 0),
      body: BlocConsumer<ImageFeedBloc, ImageFeedState>(
        listenWhen: (previous, current) =>
            current.errorMessage != null &&
            current.errorMessage != previous.errorMessage,
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: Colors.red,
            ),
          );
        },
        builder: (context, state) {
          final photos = state.photos ?? [];

          if (state.isLoading == true && photos.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (photos.isEmpty) {
            return const Center(child: Text('No photos'));
          }

          final endIndex = (_topImageIndex + _visibleImageCount).clamp(
            0,
            photos.length,
          );
          final stackDepth = endIndex - _topImageIndex;

          return Stack(
            children: [
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  setState(() => _dragOffset += details.delta.dy);
                },
                onVerticalDragEnd: (details) {
                  final double v = details.primaryVelocity ?? 0;
                  if (_dragOffset < -280 || v < -400) {
                    _onSwipe(SwipeDirection.up, photos);
                  } else if (_dragOffset > 80 || v > 200) {
                    _onSwipe(SwipeDirection.down, photos);
                  } else {
                    setState(() => _dragOffset = 0);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Stack(
                    children: [
                      for (int i = endIndex - 1; i >= _topImageIndex; i--)
                        Positioned(
                          bottom: -1 * (endIndex - i) * 20.0,
                          left: 0,
                          right: 0,
                          child: ImageContainerWidget(
                            imageUrl: photos[i].imageUrl,
                            isTopIndex: i == _topImageIndex,
                            dragOffset: i == _topImageIndex
                                ? _dragOffset.clamp(-400, 0)
                                : 0,
                            opacity: stackDepth == 0
                                ? 1
                                : (endIndex - i) / stackDepth,
                          ),
                        ),
                      if (_previousTopImageIndex != _topImageIndex)
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Transform.translate(
                            offset: Offset(
                              0,
                              _dragOffset.clamp(0, double.infinity),
                            ),
                            child: ImageContainerWidget(
                              imageUrl: photos[_previousTopImageIndex].imageUrl,
                              isTopIndex: false,
                              isPreviewIndex: true,
                              dragOffset: 0,
                              opacity: (_dragOffset.clamp(0, 200) / 100).clamp(
                                0,
                                1,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              if (state.isLoadingMore == true)
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 24,
                  child: Center(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

enum SwipeDirection { up, down }
