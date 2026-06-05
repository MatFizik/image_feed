import 'package:flutter/material.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
    required this.imagePath,
    required this.opacity,
    required this.isTopIndex,
    this.isPreviewIndex = false,
    required this.dragOffset,
  });

  final String imagePath;
  final double opacity;
  final bool isTopIndex;
  final bool isPreviewIndex;
  final double dragOffset;

  double get effectiveOpacity =>
      isTopIndex ? 1 - (dragOffset.abs() / 230).clamp(0, 1) : opacity;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, isTopIndex ? dragOffset : 0),
      child: Container(
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          color: isTopIndex || isPreviewIndex
              ? Colors.transparent
              : const Color(0xFFE0E0E0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            opacity: AlwaysStoppedAnimation(effectiveOpacity),
          ),
        ),
      ),
    );
  }
}
