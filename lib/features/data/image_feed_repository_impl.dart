import 'package:image_feed/features/data/datasources/unsplash_remote_data_source.dart';
import 'package:image_feed/features/data/mappers/photo_mapper.dart';
import 'package:image_feed/features/data/models/unsplash_photo_dto.dart';
import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/domain/image_feed_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ImageFeedRepository)
class ImageFeedRepositoryImpl implements ImageFeedRepository {
  const ImageFeedRepositoryImpl(this._remoteDataSource);
  final UnsplashRemoteDataSource _remoteDataSource;

  @override
  Future<List<Photo>> fetchPhotos({int page = 1, int limit = 20}) async {
    final List<UnsplashPhotoDto> unsplashPhotos = await _remoteDataSource
        .fetchPhotos(page: page, limit: limit);

    return unsplashPhotos.map((dto) => dto.toEntity()).toList();
  }
}
