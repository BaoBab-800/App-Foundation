import 'package:app_kit/src/theme/resolved_palette.dart';
import 'package:flutter/material.dart';

import 'app_palette.dart';
import 'palette_resolver.dart';
import 'default_palette.dart';

/// Flutter ThemeData palette configuration converter
/// Accepts a palette abstraction and uses it to assemble standard Flutter ThemeData objects.
class AppTheme {
  final AppPalette? lightPalette;
  final AppPalette? darkPalette;

  const AppTheme({
    this.lightPalette,
    this.darkPalette,
  });

  /// Builds the light theme using the resolved light palette.
  ThemeData get light {
    final palette = PaletteResolver(
      defaults: defaultLightPalette,
    ).resolve(lightPalette ?? const AppPalette());

    return ThemeData(
      brightness: Brightness.light,
      colorScheme: _buildScheme(
        Brightness.light,
        palette,
      ),
    );
  }

  /// Builds the dark theme using the resolved dark palette.
  ThemeData get dark {
    final palette = PaletteResolver(
      defaults: defaultDarkPalette,
    ).resolve(darkPalette ?? const AppPalette());

    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: _buildScheme(
        Brightness.dark,
        palette,
      ),
    );
  }

  /// Builds a [ColorScheme] from a fully resolved palette.
  ColorScheme _buildScheme(
      Brightness brightness,
      ResolvedPalette palette,
      ) {
    return ColorScheme(
      brightness: brightness,
      primary: palette.brand.primary,
      onPrimary: palette.brand.onPrimary,
      secondary: palette.brand.secondary,
      onSecondary: palette.brand.onSecondary,
      surface: palette.surfaces.surface,
      onSurface: palette.surfaces.onSurface,
      error: palette.status.error,
      onError: palette.status.onError,
    );
  }
}