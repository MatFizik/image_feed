import 'package:dio/dio.dart';
import 'package:image_feed/core/config/app_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() => Dio(
    BaseOptions(
      baseUrl: AppConfig.unsplashBaseUrl,
      headers: {'Authorization': 'Client-ID ${AppConfig.unsplashAccessKey}'},
    ),
  );
}
