import 'package:first_week/api/photo/data/photo_dto.dart';
import 'package:first_week/features/common/domain/entities/photo.dart';

/// Converts [PhotoDto] into [Photo]
Photo toPhoto(PhotoDto object) {
  return Photo(
    albumId: object.albumId ?? 0,
    id: object.id ?? 0,
    title: object.title ?? 'notitle',
    url: object.url ?? 'notitle',
    thumbnailUrl: object.thumbnailUrl ?? 'notitle',
  );
}

/// Converts [Photo] into [PhotoDto]
PhotoDto toPhotoDto(Photo object) {
  return PhotoDto(
    albumId: object.albumId,
    id: object.id,
    title: object.title,
    url: object.url,
    thumbnailUrl: object.thumbnailUrl,
  );
}
