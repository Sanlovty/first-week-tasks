import 'dart:math';

import 'package:first_week/util/logic/logic_utils.dart';
import 'package:flutter/material.dart';

/// Returns GridWidget, filled with colored Square items
/// [rowCount] - amount of rows
/// [columnCount] - amount of columns
/// [horizontalSpacing] - space between items in rows
/// [verticalSpacing] - space between rows in column
/// [color] - [Color] parameter of square items
/// [faceSize] - optional size of square side
class SquaresGridWidget extends StatelessWidget {
  final int rowCount;
  final int columnCount;
  final double horizontalSpacing;
  final double verticalSpacing;
  final Color? color;

  final double? faceSize;

  SquaresGridWidget({
    Key? key,
    required this.rowCount,
    required this.columnCount,
    this.horizontalSpacing = 1,
    this.verticalSpacing = 1,
    this.color = Colors.grey,
    this.faceSize,
  }) : super(key: key) {
    _assertInitialValues();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // trying to calculate square size, depending on parent's constraints
        final fittedFaceSize = _tryGetFittedFaceSize(constraints);

        // creating row and column list to fill later
        final columnChildren = <Widget>[];
        final rowChildren = <Widget>[];

        // filling row with [item-divider-item-....-item-divider-item] template
        for (var i = 0; i < columnCount; i++) {
          rowChildren.add(Container(
            height: fittedFaceSize,
            width: fittedFaceSize,
            color: color,
          ));
          if (i + 1 != columnCount) {
            rowChildren.add(SizedBox(width: horizontalSpacing));
          }
        }
        // Making Row widget to place it after in column
        final rowWidget = Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: rowChildren,
        );

        // Filling column list with rows
        for (var i = 0; i < rowCount; i++) {
          columnChildren.add(rowWidget);
          if (i + 1 != rowCount) {
            columnChildren.add(SizedBox(height: verticalSpacing));
          }
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: columnChildren,
        );
      },
    );
  }

  /// Tries to calculate fitted face size
  /// [constraints] - [BoxConstraints] we try fit in
  double _tryGetFittedFaceSize(BoxConstraints constraints) {
    // calculating sizes from constraints
    final totalHeight = constraints.maxHeight - constraints.minHeight;
    final totalWidth = constraints.maxWidth - constraints.minWidth;

    // if faceSize is not defined
    if (faceSize == null) {
      // calculating estimated space from [totalWidth] without horizontalSpacing
      final totalWidthWithoutSpacing =
          totalWidth - (columnCount - 1) * horizontalSpacing;
      flutterAssert(
        totalWidthWithoutSpacing > 0,
        'Widget can not fit squares with this horizontalSpacing',
      );

      // calculating estimated space from [totalHeight] without verticalSpacing
      final totalHeightWithoutSpacing =
          totalHeight - (rowCount - 1) * verticalSpacing;
      flutterAssert(
        totalWidthWithoutSpacing > 0,
        'Widget can not fit squares with this verticalSpacing',
      );

      // the smallest size - the one that fits constaints
      return min(
        totalWidthWithoutSpacing / columnCount,
        totalHeightWithoutSpacing / rowCount,
      );
    } else {
      flutterAssert(
        totalHeight -
                (rowCount * faceSize! + (rowCount - 1) * verticalSpacing) >=
            0,
        'Widget can not fit squares with this rowCount,faceSize and verticalSpacing',
      );
      flutterAssert(
        totalWidth -
                (columnCount * faceSize! +
                    (columnCount - 1) * horizontalSpacing) >=
            0,
        'Widget can not fit squares with this columnCount,faceSize and horizontalSpacing',
      );

      return faceSize!;
    }
  }

  /// assert values to be positive numbers
  void _assertInitialValues() {
    _assertPositiveValue(rowCount > 0, 'rowCount');
    _assertPositiveValue(columnCount > 0, 'columnCount');
    if (faceSize != null) {
      _assertPositiveValue(faceSize! > 0, 'faceSize');
    }
    _assertPositiveValue(horizontalSpacing > 0, 'horizontalSpacing');
    _assertPositiveValue(verticalSpacing > 0, 'verticalSpacing');
  }
}

/// wrapper above [flutterAssert] to easy-use
void _assertPositiveValue(
  bool expression,
  String name,
) {
  flutterAssert(expression, '$name must be positive number');
}
