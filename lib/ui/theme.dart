import 'package:flutter/material.dart';

/// theme for application

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
  ),
);
