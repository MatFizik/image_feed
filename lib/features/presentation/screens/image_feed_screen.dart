import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_feed/features/data/image_feed_repository_impl.dart';
import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/domain/image_feed_use_case.dart';
import 'package:image_feed/features/presentation/bloc/image_feed_bloc.dart';
import 'package:image_feed/features/presentation/widgets/image_container_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  final List<Photo> _photos = [];
  late final ImageFeedBloc _imageFeedBloc = ImageFeedBloc(
    GetPhotosUseCase(ImageFeedRepositoryImpl()),
  );
  final int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _fetchPhotos();
  }

  void _fetchPhotos() async {
    _imageFeedBloc.add(ImageFeedEvent.fetchPhotos(page: _currentPage));
  }

  void _onSwipe(SwipeDirection direction) {
    Timer(
      Duration(milliseconds: 300),
      () => setState(() {
        switch (direction) {
          case SwipeDirection.up:
            if (_topImageIndex < _photos.length - 1) {
              _previousTopImageIndex = _topImageIndex;
              _topImageIndex++;
            }
            break;
          case SwipeDirection.down:
            if (_topImageIndex > 0) {
              if (_topImageIndex - 1 != 0) {
                _previousTopImageIndex--;
              }
              _topImageIndex--;
            }
            break;
        }
        _dragOffset = 0;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    int endIndex = (_topImageIndex + _visibleImageCount).clamp(
      0,
      _photos.length,
    );
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(backgroundColor: const Color(0xFFFFFFFF), elevation: 0),
      body: BlocProvider.value(
        value: _imageFeedBloc,
        child: BlocListener<ImageFeedBloc, ImageFeedState>(
          listener: (context, state) {
            switch (state) {
              case LoadingPhotos():
                break;
              case LoadedPhotos(photos: final photos):
                setState(() {
                  _photos.addAll(photos);
                });
                break;
              case ErrorPhotos(message: final message):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message), backgroundColor: Colors.red),
                );
              case _:
                break;
            }
          },
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              setState(() => _dragOffset += details.delta.dy);
            },
            onVerticalDragEnd: (details) {
              final double v = details.primaryVelocity ?? 0;
              if (_dragOffset < -280 || v < -400) {
                _onSwipe(SwipeDirection.up);
              } else if (_dragOffset > 80 || v > 200) {
                _onSwipe(SwipeDirection.down);
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
                        imagePath: _photos[i].imageUrl,
                        isTopIndex: i == _topImageIndex,
                        dragOffset: i == _topImageIndex
                            ? _dragOffset.clamp(-400, 0)
                            : 0,
                        opacity: (endIndex - i) / (endIndex - _topImageIndex),
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
                          imagePath: _photos[_previousTopImageIndex].imageUrl,
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
        ),
      ),
    );
  }
}

enum SwipeDirection { up, down }
