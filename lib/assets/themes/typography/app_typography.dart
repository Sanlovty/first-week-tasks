import 'package:flutter/material.dart';

const defaultFontFamily = 'Roboto';

/// Text styles
class AppTypography {
  static const headerTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: defaultFontFamily,
    fontSize: 22,
    shadows: [
      Shadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
        blurRadius: 10,
      ),
    ],
  );
  static const normalTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: defaultFontFamily,
    fontSize: 16,
  );
}
