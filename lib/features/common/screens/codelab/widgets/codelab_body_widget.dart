import 'package:first_week/features/common/screens/codelab/widgets/random_words_widget.dart';
import 'package:flutter/material.dart';

class CodelabBodyWidget extends StatelessWidget {
  const CodelabBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const RandomWordsWidget(),
    );
  }
}
