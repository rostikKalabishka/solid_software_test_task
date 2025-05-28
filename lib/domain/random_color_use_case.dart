import 'dart:math';

import 'package:flutter/material.dart';

/// Use case for generating random color
class RandomColorUseCase {
  final _random = Random();
  static const int _maxColorValue = 256;
  static const int _alphaOpaque = 255;

  /// Generates a random color with full opacity
  Color generateColor() {
    return Color.fromARGB(
      _alphaOpaque,
      _random.nextInt(_maxColorValue),
      _random.nextInt(_maxColorValue),
      _random.nextInt(_maxColorValue),
    );
  }
}
