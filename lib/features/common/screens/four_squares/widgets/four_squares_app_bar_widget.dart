import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:flutter/material.dart';

class FourSquaresAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(69);

  const FourSquaresAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppStrings.fourSquaresScreenAppBarTitle,
        style: AppTypography.headerTextStyle.copyWith(
          color: AppColors.eerieBlack,
        ),
      ),
      backgroundColor: AppColors.pictonBlue,
      toolbarHeight: 69,
    );
  }
}
