import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/screens/main/widgets/task_item_widget.dart';
import 'package:first_week/features/navigation/app_router.dart';
import 'package:flutter/material.dart';

// Main screen
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 56,
        title: SizedBox(
          height: 28,
          width: 220,
          child: Text(
            AppStrings.mainScreenAppBarTitle,
            style: AppTypography.headerTextStyle.copyWith(
              color: AppColors.eerieBlack,
            ),
          ),
        ),
        backgroundColor: AppColors.pictonBlue,
        toolbarHeight: 69,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 22,
        ),
        child: Column(
          children: [
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemFirstText,
              onTapCallback: () {
                Navigator.of(context).pushNamed(AppRouter.fourSquaresScreen);
              },
            ),
            const SizedBox(height: 16),
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemSecondText,
              onTapCallback: () {
                Navigator.of(context).pushNamed(AppRouter.coloredListScreen);
              },
            ),
            const SizedBox(height: 16),
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemThirdText,
              onTapCallback: () {
                Navigator.of(context).pushNamed(AppRouter.codelabScreen);
              },
            ),
            const SizedBox(height: 16),
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemFourthText,
              onTapCallback: () {
                Navigator.of(context).pushNamed(AppRouter.mainScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
