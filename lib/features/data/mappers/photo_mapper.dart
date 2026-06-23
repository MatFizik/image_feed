import 'package:image_feed/features/data/models/unsplash_photo_dto.dart';
import 'package:image_feed/features/domain/entities/photo.dart';

extension UnsplashDtoPhotoMapper on UnsplashPhotoDto {
  Photo toEntity() {
    return Photo(
      id: id,
      imageUrl: imageUrl,
      thumbUrl: thumbUrl,
      photographerName: photographerName,
      color: color,
    );
  }
}
