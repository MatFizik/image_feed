import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
    required this.imageUrl,
    required this.opacity,
    required this.isTopIndex,
    this.isPreviewIndex = false,
    required this.dragOffset,
  });

  final String imageUrl;
  final double opacity;
  final bool isTopIndex;
  final bool isPreviewIndex;
  final double dragOffset;

  double get effectiveOpacity =>
      isTopIndex ? 1 - (dragOffset.abs() / 230).clamp(0, 1) : opacity;

  bool get _isNetworkImage => imageUrl.startsWith('http');

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
          child: Opacity(
            opacity: effectiveOpacity,
            child: _isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    placeholder: (_, __) =>
                        const ColoredBox(color: Color(0xFFE0E0E0)),
                    errorWidget: (_, __, ___) =>
                        const ColoredBox(color: Color(0xFFBDBDBD)),
                  )
                : Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}
