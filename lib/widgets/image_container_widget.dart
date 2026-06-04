import 'package:flutter/material.dart';

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
    required this.imagePath,
    required this.opacity,
  });

  final String imagePath;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.blueGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 30,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          opacity: Animation<double>.fromValueListenable(
            ValueNotifier(opacity),
          ),
        ),
      ),
    );
  }
}
