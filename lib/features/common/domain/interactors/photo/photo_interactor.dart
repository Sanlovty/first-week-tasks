import 'package:first_week/api/photo/repositories/photo_repository.dart';
import 'package:first_week/features/common/domain/entities/photo.dart';
import 'package:first_week/features/common/domain/mappers/photo/photo_mappers.dart';
import 'package:flutter/material.dart';

/// Interactor for [PhotoRepository]
class PhotoInteractor {
  final PhotoRepository photoRepository;

  PhotoInteractor({
    required this.photoRepository,
  });

  Future<List<Photo>?> getPhotos() async {
    final response = await photoRepository.photoGetList();

    if (response == null) {
      return null;
    }
    final list = <Photo>[];
    for (final item in response) {
      if (item != null) {
        list.add(toPhoto(item));
      } else {
        debugPrint('missing value in photo list');
      }
    }
    if (list.isEmpty) {
      return null;
    }

    return list;
  }

  Future<Photo?> getPhotoById(int id) async {
    final response = await photoRepository.photoGetById(id: id);

    return response == null ? null : toPhoto(response);
  }
}
