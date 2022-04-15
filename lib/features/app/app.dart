import 'package:first_week/assets/themes/typography/app_themes.dart';
import 'package:first_week/features/navigation/app_router.dart';
import 'package:flutter/material.dart';

/// Root [MaterialApp] wrapper for every screens
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.mainScreen,
      onGenerateRoute: (routeSettings) =>
          AppRouter.routes[routeSettings.name]!(routeSettings.arguments),
    );
  }
}
