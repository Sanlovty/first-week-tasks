import 'package:first_week/features/app/di/di_component.dart';
import 'package:first_week/features/common/screens/async_request/async_request_screen.dart';
import 'package:flutter/material.dart';

/// [MaterialPageRoute] for [AsyncRequestScreen]
class AsyncRequestScreenRoute extends MaterialPageRoute<void> {
  AsyncRequestScreenRoute()
      : super(
          builder: (ctx) => AsyncRequestScreen(
            photoInteractor: DiComponent.of(ctx)!.photoInteractor,
          ),
        );
}
