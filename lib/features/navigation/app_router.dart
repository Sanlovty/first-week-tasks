import 'package:first_week/features/common/screens/main/main_screen_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String mainScreen = '/main';

  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
  };
}
