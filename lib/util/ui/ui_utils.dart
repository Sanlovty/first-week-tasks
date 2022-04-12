import 'dart:math';

import 'package:flutter/material.dart';

/// Returns random [Color]
Color getRandomColor() {
  return Color.fromARGB(
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  );
}
