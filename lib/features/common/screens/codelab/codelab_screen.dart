import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:flutter/material.dart';

/// Codelab screen
class CodelabScreen extends StatelessWidget {
  const CodelabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 56,
        title: SizedBox(
          height: 28,
          width: 220,
          child: Text(
            AppStrings.codelabScreenAppBarTitle,
            style: AppTypography.headerTextStyle.copyWith(
              color: AppColors.eerieBlack,
            ),
          ),
        ),
        backgroundColor: AppColors.pictonBlue,
        toolbarHeight: 69,
      ),
    );
  }
}
