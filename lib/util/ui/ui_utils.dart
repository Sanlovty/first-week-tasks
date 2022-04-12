import 'dart:math';

import 'package:flutter/material.dart';

// TODO: wille be moved to util folder in common folder ( later )
  /// Returns random [Color]
  Color getRandomColor() {
    return Color.fromARGB(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }