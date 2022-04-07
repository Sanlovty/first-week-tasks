import 'package:first_week/features/common/screens/async_request/async_request_screen_route.dart';
import 'package:first_week/features/common/screens/main/main_screen_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String mainScreen = '/';
  static const String asyncRequestScreen = '/asyncrequest';

  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
    asyncRequestScreen: (_) => AsyncRequestScreenRoute(),
  };
}
