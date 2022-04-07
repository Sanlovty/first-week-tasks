import 'package:first_week/features/app/app.dart';
import 'package:first_week/features/app/di/di_component.dart';
import 'package:flutter/widgets.dart';

Future<void> runApplication() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DiComponent(
      child: const App(),
    ),
  );
}
