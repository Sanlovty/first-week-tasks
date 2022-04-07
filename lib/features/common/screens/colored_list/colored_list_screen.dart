import 'dart:math';

import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/screens/colored_list/widgets/rectangle_widget.dart';
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
        child: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: RectangleWidget(
              color: _rectangleColor,
            ),
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
              _rectangleColor = _getRandomColor();
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

  // TODO: wille be moved to util folder in common folder ( later )
  /// Returns random [Color]
  Color _getRandomColor() {
    return Color.fromARGB(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }
}
