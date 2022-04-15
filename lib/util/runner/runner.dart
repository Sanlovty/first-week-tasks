import 'package:first_week/features/app/app.dart';
import 'package:flutter/widgets.dart';

/// Run proccess of app. (init, run)
Future<void> runApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
