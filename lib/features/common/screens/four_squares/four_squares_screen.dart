import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/features/common/screens/four_squares/widgets/four_squares_app_bar_widget.dart';
import 'package:first_week/features/common/widgets/squares_grid_widget.dart';
import 'package:first_week/util/ui/ui_utils.dart';
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
      appBar: const FourSquaresAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 82,
          horizontal: 32,
        ),
        child: Center(
          child: SquaresGridWidget(
            rowCount: 2,
            columnCount: 2,
            horizontalSpacing: 10,
            verticalSpacing: 10,
            color: _squareColor,
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
              _squareColor = getRandomColor();
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
