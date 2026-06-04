import 'package:flutter/material.dart';
import 'package:image_feed/image_feed_screen.dart';

void main() {
  runApp(const ImageFeedApp());
}

class ImageFeedApp extends StatelessWidget {
  const ImageFeedApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ImageFeedScreen(),
    );
  }
}
