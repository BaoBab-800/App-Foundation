import 'package:flutter/material.dart';

/// Color class description
class AppPalette {
  final Color primary;
  final Color secondary;
  final Color error;

  const AppPalette({
    required this.primary,
    required this.secondary,
    required this.error,
  });

  // Ready-made color library presets
  static const purple = AppPalette(
    primary: Colors.deepPurple,
    secondary: Colors.deepPurpleAccent,
    error: Colors.red,
  );

  static const blue = AppPalette(
    primary: Colors.blue,
    secondary: Colors.lightBlue,
    error: Colors.red,
  );
}