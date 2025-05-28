import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorUseCase {
  final _random = Random();

  Color generateColor() {
    return Color.fromARGB(
        255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));
  }
}
