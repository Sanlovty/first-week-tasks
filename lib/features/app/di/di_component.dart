// ignore_for_file: member-ordering-extended

import 'package:dio/dio.dart';
import 'package:first_week/api/repositories/photo/photo_repository.dart';
import 'package:first_week/api/service/photo_api/photo_api_client.dart';
import 'package:first_week/config/api_urls.dart';
import 'package:first_week/config/dio_options.dart';
import 'package:first_week/features/common/domain/interactors/photo/photo_interactor.dart';
import 'package:flutter/material.dart';

class DiComponent extends InheritedWidget {
  // ignore: annotate_overrides, overridden_fields
  final Widget child;

  // API:
  late final _dio = Dio(dioOptions);
  late final _photoApiClient = PhotoApiClient(
    _dio,
    baseUrl: ApiUrls.defautlDioUrl,
  );

  // Repository:
  late final photoRepository = PhotoRepository(
    client: _photoApiClient,
  );

  // Interactors:
  late final photoInteractor = PhotoInteractor(
    photoRepository: photoRepository,
  );

  DiComponent({
    Key? key,
    required this.child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(DiComponent oldWidget) {
    return true;
  }

  static DiComponent? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DiComponent>();
  }
}
