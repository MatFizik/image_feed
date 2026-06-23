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
        emit(state.copyWith(isLoading: true, errorMessage: null));
        try {
          final photos = await _getPhotosUseCase(page: e.page);
          emit(
            state.copyWith(
              photos: photos,
              currentPage: e.page,
              isLoading: false,
              isLoadingMore: false,
            ),
          );
        } catch (error) {
          emit(state.copyWith(isLoading: false, errorMessage: error.toString()));
        }
      },
      loadMorePhotos: (e) async {
        if (state.isLoadingMore == true || state.isLoading == true) {
          return;
        }

        final nextPage = (state.currentPage ?? 1) + 1;
        emit(state.copyWith(isLoadingMore: true, errorMessage: null));

        try {
          final photos = await _getPhotosUseCase(page: nextPage);
          if (photos.isEmpty) {
            emit(state.copyWith(isLoadingMore: false));
            return;
          }

          emit(
            state.copyWith(
              photos: [...?state.photos, ...photos],
              currentPage: nextPage,
              isLoadingMore: false,
            ),
          );
        } catch (error) {
          emit(
            state.copyWith(
              isLoadingMore: false,
              errorMessage: error.toString(),
            ),
          );
        }
      },
    );
  }
}
