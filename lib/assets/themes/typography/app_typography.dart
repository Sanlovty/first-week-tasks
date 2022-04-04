import 'package:first_week/assets/colors/app_colors.dart';
import 'package:flutter/material.dart';

const defaultFontFamily = 'Roboto';

/// Text styles
class AppTypography {
  static const headerEerieBlackTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: defaultFontFamily,
    color: AppColors.eerieBlack,
    fontSize: 22,
    shadows: [
      Shadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        offset: Offset(0, 4),
        blurRadius: 10,
      ),
    ],
  );
  static const normalEerieBlackTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: defaultFontFamily,
    color: AppColors.black,
    fontSize: 16,
  );
}
