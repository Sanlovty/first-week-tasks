import 'package:first_week/assets/colors/app_colors.dart';
import 'package:first_week/assets/strings/app_strings.dart';
import 'package:first_week/assets/themes/typography/app_typography.dart';
import 'package:first_week/features/common/screens/main/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 56,
        title: const SizedBox(
          height: 28,
          width: 220,
          child: Text(
            AppStrings.mainScreenAppBarTitle,
            style: AppTypography.headerEerieBlackTextStyle,
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
              title: AppStrings.mainScreenTaskItemFirst,
              onTapCallback: () {
                debugPrint('Mocked with emptyness');
              },
            ),
            const SizedBox(height: 16),
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemSecond,
              onTapCallback: () {
                debugPrint('Mocked with emptyness');
              },
            ),
            const SizedBox(height: 16),
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemThird,
              onTapCallback: () {
                debugPrint('Mocked with emptyness');
              },
            ),
            const SizedBox(height: 16),
            TaskItemWidget(
              title: AppStrings.mainScreenTaskItemFourth,
              onTapCallback: () {
                debugPrint('Mocked with emptyness');
              },
            ),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push<void>(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
