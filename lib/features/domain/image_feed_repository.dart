import 'package:image_feed/features/domain/entities/photo.dart';

abstract class ImageFeedRepository {
  Future<List<Photo>> fetchPhotos({int page = 1, int limit = 20});
}
