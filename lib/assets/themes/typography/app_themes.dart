import 'package:first_week/assets/colors/app_colors.dart';
import 'package:flutter/material.dart';

// TODO: tip needed to understand the best practice for theme creating/usage.
// p.s: i suggest it to be wrapped in some class, to make app able to swap theme through it's run flow
final defaultTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    color: AppColors.pictonBlue,
    iconTheme: IconThemeData(color: AppColors.eerieBlack),
  ),
);
