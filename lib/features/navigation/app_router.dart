import 'package:first_week/features/common/screens/four_squares/four_squares_screen_route.dart';
import 'package:first_week/features/common/screens/main/main_screen_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String mainScreen = '/';
  static const String fourSquaresScreen = '/foursquares';

  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
    fourSquaresScreen: (_) => FourSquaresScreenRoute(),
  };
}
