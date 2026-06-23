import 'package:dio/dio.dart';
import 'package:image_feed/features/data/models/unsplash_photo_dto.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UnsplashRemoteDataSource {
  UnsplashRemoteDataSource(this._dio);

  final Dio _dio;

  Future<List<UnsplashPhotoDto>> fetchPhotos({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        'photos',
        queryParameters: {'page': page, 'per_page': limit},
      );

      final data = response.data;
      if (data == null) return Future.error('No data received');
      return data.map((json) => UnsplashPhotoDto.fromJson(json)).toList();
    } catch (e) {
      return Future.error(e);
    }
  }
}
