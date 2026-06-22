part of 'image_feed_bloc.dart';

@freezed
sealed class ImageFeedState with _$ImageFeedState {
  const factory ImageFeedState.initial() = Initial;
  const factory ImageFeedState.loadingPhotos() = LoadingPhotos;
  const factory ImageFeedState.loadedPhotos({required List<Photo> photos}) =
      LoadedPhotos;
  const factory ImageFeedState.errorPhotos({required String message}) =
      ErrorPhotos;
}
