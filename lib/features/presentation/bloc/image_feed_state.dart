part of 'image_feed_bloc.dart';

@freezed
sealed class ImageFeedState with _$ImageFeedState {
  const factory ImageFeedState({
    List<Photo>? photos,
    int? currentPage,
    int? totalPhotos,
    bool? isLoading,
    bool? isLoadingMore,
    String? errorMessage,
  }) = _ImageFeedState;
}
