import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  final String title;
  final void Function() onTapCallback;

  const TaskItemWidget({
    Key? key,
    required this.title,
    required this.onTapCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.pictonBlue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTypography.normalEerieBlackTextStyle,
            ),
            const Icon(
              Icons.arrow_forward,
              color: AppColors.eerieBlack,
            ),
          ],
        ),
      ),
    );
  }
}
