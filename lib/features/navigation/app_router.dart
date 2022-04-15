import 'package:first_week/features/common/screens/async_request/async_request_screen_route.dart';
import 'package:first_week/features/common/screens/codelab/codelab_screen_route.dart';
import 'package:first_week/features/common/screens/colored_list/colored_list_screen_route.dart';
import 'package:first_week/features/common/screens/four_squares/four_squares_screen_route.dart';
import 'package:first_week/features/common/screens/main/main_screen_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String mainScreen = '/';
  static const String asyncRequestScreen = '/asyncrequest';
  static const String codelabScreen = '/codelab';
  static const String coloredListScreen = '/coloredlist';
  static const String fourSquaresScreen = '/foursquares';

  static final Map<String, Route Function(Object?)> routes = {
    mainScreen: (_) => MainScreenRoute(),
    asyncRequestScreen: (_) => AsyncRequestScreenRoute(),
    codelabScreen: (_) => CodelabScreenRoute(),
    coloredListScreen: (_) => ColoredListScreenRoute(),
    fourSquaresScreen: (_) => FourSquaresScreenRoute(),
  };
}
