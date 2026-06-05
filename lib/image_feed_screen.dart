import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_feed/constants/mock_assets.dart';
import 'package:image_feed/widgets/image_container_widget.dart';

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

  final List<String> _mockImages = [
    MockAssets.zeroImage,
    MockAssets.firstImage,
    MockAssets.secondImage,
    MockAssets.thirdImage,
    MockAssets.fourthImage,
    MockAssets.fifthImage,
    MockAssets.sixthImage,
    MockAssets.seventhImage,
    MockAssets.eighthImage,
  ];

  void _onSwipe(SwipeDirection direction) {
    Timer(
      Duration(milliseconds: 300),
      () => setState(() {
        switch (direction) {
          case SwipeDirection.up:
            if (_topImageIndex < _mockImages.length - 1) {
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
      _mockImages.length,
    );
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(backgroundColor: const Color(0xFFFFFFFF), elevation: 0),
      body: GestureDetector(
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
                    imagePath: _mockImages[i],
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
                    offset: Offset(0, _dragOffset.clamp(0, double.infinity)),
                    child: ImageContainerWidget(
                      imagePath: _mockImages[_previousTopImageIndex],
                      isTopIndex: false,
                      isPreviewIndex: true,
                      dragOffset: 0,
                      opacity: (_dragOffset.clamp(0, 200) / 100).clamp(0, 1),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

enum SwipeDirection { up, down }
