part of 'image_feed_bloc.dart';

@freezed
sealed class ImageFeedEvent with _$ImageFeedEvent {
  const factory ImageFeedEvent.fetchPhotos({required int page}) = _FetchPhotos;
  const factory ImageFeedEvent.loadMorePhotos() = _LoadMorePhotos;
}
