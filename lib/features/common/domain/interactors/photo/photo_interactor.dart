import 'package:first_week/api/repositories/photo/photo_repository.dart';
import 'package:first_week/features/common/domain/entities/photo.dart';
import 'package:first_week/features/common/domain/mappers/photo/photo_mappers.dart';

/// Interactor for [PhotoRepository]
class PhotoInteractor {
  final PhotoRepository photoRepository;

  PhotoInteractor({
    required this.photoRepository,
  });

  Future<List<Photo>> getPhotos() async {
    final response = await photoRepository.photoGetList();

    return response.map((e) => toPhoto(e!)).toList();
  }

  Future<Photo> getPhotoById(int id) async {
    final response = await photoRepository.photoGetById(id: id);

    return toPhoto(response!);
  }
}
