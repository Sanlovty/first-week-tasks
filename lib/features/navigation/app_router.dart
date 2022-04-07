import 'package:first_week/features/common/screens/colored_list/colored_list_screen_route.dart';
import 'package:first_week/features/common/screens/main/main_screen_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String mainScreen = '/';
  static const String coloredListScreen = '/coloredlist';

  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
    coloredListScreen: (_) => ColoredListScreenRoute(),
  };
}
