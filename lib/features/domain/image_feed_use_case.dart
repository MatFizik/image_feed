import 'package:image_feed/features/domain/entities/photo.dart';
import 'package:image_feed/features/domain/image_feed_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPhotosUseCase {
  const GetPhotosUseCase(this._repository);
  final ImageFeedRepository _repository;

  Future<List<Photo>> call({required int page}) {
    return _repository.fetchPhotos(page: page);
  }
}
