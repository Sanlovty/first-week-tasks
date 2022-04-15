
import 'package:flutter/material.dart';

// ignore: avoid_positional_boolean_parameters
void flutterAssert(bool expression, String message) {
  if (!expression) {
    throw FlutterError(message);
  }
}
