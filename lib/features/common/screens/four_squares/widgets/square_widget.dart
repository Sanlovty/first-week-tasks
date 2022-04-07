import 'package:first_week/features/common/screens/four_squares/four_squares_screen.dart';
import 'package:flutter/material.dart';

/// Square [Widget] for [FourSquaresScreen]
class SquareWidget extends StatelessWidget {
  final Color color;
  const SquareWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: color,
    );
  }
}
