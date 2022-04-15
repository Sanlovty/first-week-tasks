import 'package:first_week/features/common/screens/colored_list/colored_list_screen.dart';
import 'package:flutter/material.dart';

/// Rectangle [Widget] for [ColoredListScreen]
class RectangleWidget extends StatelessWidget {
  final Color color;
  const RectangleWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: double.infinity,
      color: color,
    );
  }
}
