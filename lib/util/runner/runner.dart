import 'package:first_week/features/app/app.dart';
import 'package:flutter/widgets.dart';

Future<void> runApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
