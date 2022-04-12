import 'package:first_week/features/common/screens/codelab/codelab_screen_route.dart';
import 'package:first_week/features/common/screens/main/main_screen_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String mainScreen = '/';
  static const String codelabScreen = '/codelab';

  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
    codelabScreen: (_) => CodelabScreenRoute(),
  };
}
