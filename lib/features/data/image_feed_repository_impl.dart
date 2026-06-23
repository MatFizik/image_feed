import 'package:image_feed/constants/mock_assets.dart';
import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/domain/image_feed_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ImageFeedRepository)
class ImageFeedRepositoryImpl implements ImageFeedRepository {
  @override
  Future<List<Photo>> fetchPhotos({int page = 1, int limit = 20}) async {
    final List<Photo> photos = [
      Photo(id: '1', imageUrl: MockAssets.zeroImage, thumbUrl: ''),
      Photo(id: '2', imageUrl: MockAssets.firstImage, thumbUrl: ''),
      Photo(id: '3', imageUrl: MockAssets.secondImage, thumbUrl: ''),
      Photo(id: '4', imageUrl: MockAssets.thirdImage, thumbUrl: ''),
      Photo(id: '5', imageUrl: MockAssets.fourthImage, thumbUrl: ''),
      Photo(id: '6', imageUrl: MockAssets.fifthImage, thumbUrl: ''),
      Photo(id: '7', imageUrl: MockAssets.sixthImage, thumbUrl: ''),
      Photo(id: '8', imageUrl: MockAssets.seventhImage, thumbUrl: ''),
      Photo(id: '9', imageUrl: MockAssets.eighthImage, thumbUrl: ''),
    ];
    return photos;
  }
}
