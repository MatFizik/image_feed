import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_feed/features/data/image_feed_repository_impl.dart';
import 'package:image_feed/features/domain/image_feed_use_case.dart';
import 'package:image_feed/features/presentation/bloc/image_feed_bloc.dart';
import 'package:image_feed/features/presentation/screens/image_feed_screen.dart';

void main() {
  runApp(const ImageFeedApp());
}

class ImageFeedApp extends StatelessWidget {
  const ImageFeedApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ImageFeedBloc(GetPhotosUseCase(ImageFeedRepositoryImpl())),
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
