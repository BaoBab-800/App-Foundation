import 'package:flutter/material.dart';

import 'app_palette.dart';

/// Flutter ThemeData palette configuration converter
/// Accepts a palette abstraction and uses it to assemble standard Flutter ThemeData objects.
class AppTheme {
  final AppPalette palette;

  const AppTheme({required this.palette});

  ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: palette.brand.primary,
        brightness: Brightness.light,
      ),
    );
  }

  ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: palette.brand.primary,
        brightness: Brightness.dark,
      ),
    );
  }
}