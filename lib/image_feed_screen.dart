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
  double _dragOffset = 0;
  final int _visibleImageCount = 3;

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
    setState(() {
      switch (direction) {
        case SwipeDirection.up:
          if (_topImageIndex < _mockImages.length - 1) {
            _topImageIndex++;
          }
          break;
        case SwipeDirection.down:
          if (_topImageIndex > 0) {
            _topImageIndex--;
          }
          break;
      }
      _dragOffset = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    int endIndex = (_topImageIndex + _visibleImageCount).clamp(
      0,
      _mockImages.length,
    );

    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          setState(() => _dragOffset += details.delta.dy);
        },
        onVerticalDragEnd: (details) {
          final v = details.primaryVelocity ?? 0;
          if (_dragOffset < -80 || v < -200) {
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
                  child: Transform.translate(
                    offset: Offset(0, i == _topImageIndex ? _dragOffset : 0),
                    child: Opacity(
                      opacity: i == _topImageIndex
                          ? 1 - (_dragOffset.abs() / 230).clamp(0, 1)
                          : (endIndex - i) / (endIndex - _topImageIndex),
                      child: ImageContainerWidget(
                        imagePath: _mockImages[i],
                        opacity: (endIndex - i) / (endIndex - _topImageIndex),
                      ),
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
