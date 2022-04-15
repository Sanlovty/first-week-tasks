import 'dart:math';

import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/screens/colored_list/widgets/rectangle_widget.dart';
import 'package:first_week/util/ui/ui_utils.dart';
import 'package:flutter/material.dart';

// Colored list Screen
class ColoredListScreen extends StatefulWidget {
  const ColoredListScreen({Key? key}) : super(key: key);

  @override
  State<ColoredListScreen> createState() => _ColoredListScreenState();
}

class _ColoredListScreenState extends State<ColoredListScreen> {
  Color _rectangleColor = AppColors.silverSand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 28,
          width: 220,
          child: Text(
            AppStrings.coloredListScreenAppBarTitle,
            style: AppTypography.headerTextStyle.copyWith(
              color: AppColors.eerieBlack,
            ),
          ),
        ),
        backgroundColor: AppColors.pictonBlue,
        toolbarHeight: 69,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 14,
        ),
        child: ListView.separated(
          itemCount: 1000,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) => RectangleWidget(
            color: _rectangleColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 45),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            setState(() {
              _rectangleColor = getRandomColor();
            });
          },
          child: const Icon(
            Icons.edit,
            color: AppColors.deepViolet,
          ),
        ),
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          color: AppColors.pictonBlue,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
