import 'package:dio/dio.dart';
import 'package:first_week/api/data/photo_dto.dart';
import 'package:first_week/api/service/photo_api/photo_api_client.dart';
import 'package:first_week/api/util/custom_to_string.dart';
import 'package:flutter/material.dart';

/// Repository for [PhotoApiClient]
class PhotoRepository {
  final PhotoApiClient client;

  const PhotoRepository({
    required this.client,
  });

  Future<PhotoDto?> photoGetById({
    required int id,
  }) async {
    try {
      return client.photoGetById(
        id,
      );
    } on DioError catch (e) {
      debugPrint(e.toDebugString());

      return null;
    }
  }

  Future<List<PhotoDto?>> photoGetList() async {
    try {
      return client.photoGetList();
    } on DioError catch (e) {
      debugPrint(e.toDebugString());

      return [];
    }
  }
}
