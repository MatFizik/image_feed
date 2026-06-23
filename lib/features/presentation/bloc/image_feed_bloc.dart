import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/domain/image_feed_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'image_feed_event.dart';
part 'image_feed_state.dart';
part 'image_feed_bloc.freezed.dart';

@injectable
class ImageFeedBloc extends Bloc<ImageFeedEvent, ImageFeedState> {
  final GetPhotosUseCase _getPhotosUseCase;

  ImageFeedBloc(this._getPhotosUseCase) : super(ImageFeedState()) {
    on<ImageFeedEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ImageFeedEvent event,
    Emitter<ImageFeedState> emit,
  ) async {
    await event.map(
      fetchPhotos: (e) async {
        emit(ImageFeedState(isLoading: true));
        try {
          final photos = await _getPhotosUseCase(page: e.page);
          emit(ImageFeedState(photos: photos));
        } catch (error) {
          emit(ImageFeedState(errorMessage: error.toString()));
        }
      },
      loadMorePhotos: (e) async {
        emit(state.copyWith(isLoading: true));
        try {
          final int nextPage = ((state.totalPhotos ?? 1) / 20).ceil() + 1;
          final List<Photo> photos = await _getPhotosUseCase(page: nextPage);
          emit(
            state.copyWith(
              photos: [...?state.photos, ...photos],
              currentPage: nextPage,
              isLoading: false,
            ),
          );
        } catch (error) {
          emit(
            state.copyWith(errorMessage: error.toString(), isLoading: false),
          );
        }
      },
    );
  }
}
