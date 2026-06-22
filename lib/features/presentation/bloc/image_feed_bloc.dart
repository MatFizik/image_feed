import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/domain/image_feed_use_case.dart';
import 'package:bloc/bloc.dart';

part 'image_feed_event.dart';
part 'image_feed_state.dart';
part 'image_feed_bloc.freezed.dart';

class ImageFeedBloc extends Bloc<ImageFeedEvent, ImageFeedState> {
  final GetPhotosUseCase _getPhotosUseCase;

  ImageFeedBloc(this._getPhotosUseCase)
    : super(const ImageFeedState.initial()) {
    on<ImageFeedEvent>(_onEvent);
  }

  Future<void> _onEvent(
    ImageFeedEvent event,
    Emitter<ImageFeedState> emit,
  ) async {
    await event.map(
      fetchPhotos: (e) async {
        emit(const ImageFeedState.loadingPhotos());
        try {
          final photos = await _getPhotosUseCase(page: e.page);
          emit(ImageFeedState.loadedPhotos(photos: photos));
        } catch (error) {
          emit(ImageFeedState.errorPhotos(message: error.toString()));
        }
      },
    );
  }
}
