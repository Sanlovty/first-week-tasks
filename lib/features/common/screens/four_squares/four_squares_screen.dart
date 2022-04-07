import 'dart:math';

import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/screens/four_squares/widgets/square_widget.dart';
import 'package:flutter/material.dart';

/// FourSquares screen
class FourSquaresScreen extends StatefulWidget {
  const FourSquaresScreen({Key? key}) : super(key: key);

  @override
  State<FourSquaresScreen> createState() => _FourSquaresScreenState();
}

class _FourSquaresScreenState extends State<FourSquaresScreen> {
  Color _squareColor = AppColors.silverSand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 28,
          width: 220,
          child: Text(
            AppStrings.fourSquaresScreenAppBarTitle,
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
          top: 82,
          left: 32,
          right: 32,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SquareWidget(color: _squareColor),
                  const SizedBox(width: 10),
                  SquareWidget(color: _squareColor),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SquareWidget(color: _squareColor),
                  const SizedBox(width: 10),
                  SquareWidget(color: _squareColor),
                ],
              ),
            ],
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
              _squareColor = _getRandomColor();
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
