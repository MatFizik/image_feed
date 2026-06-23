import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_feed/core/di/injectable.dart';
import 'package:image_feed/features/presentation/bloc/image_feed_bloc.dart';
import 'package:image_feed/features/presentation/screens/image_feed_screen.dart';

void main() {
  configureDependencies();
  runApp(const ImageFeedApp());
}

class ImageFeedApp extends StatelessWidget {
  const ImageFeedApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ImageFeedBloc>()..add(ImageFeedEvent.fetchPhotos(page: 1)),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const ImageFeedScreen(),
      ),
    );
  }
}
