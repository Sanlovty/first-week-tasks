import 'package:first_week/features/common/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

// Root MaterialApp wrapper for every screens
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
