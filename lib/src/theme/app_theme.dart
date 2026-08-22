import 'package:app_kit/src/theme/resolved_palette.dart';
import 'package:flutter/material.dart';

import 'app_palette.dart';
import 'app_theme_extension.dart';
import 'default_palette.dart';
import 'palette_resolver.dart';

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
  ThemeData get light => _buildTheme(
    brightness: Brightness.light,
    palette: lightPalette ?? const AppPalette(),
    defaults: defaultLightPalette,
  );

  /// Builds the dark theme using the resolved dark palette.
  ThemeData get dark => _buildTheme(
    brightness: Brightness.dark,
    palette: darkPalette ?? const AppPalette(),
    defaults: defaultDarkPalette,
  );

  ThemeData _buildTheme({
    required Brightness brightness,
    required AppPalette palette,
    required ResolvedPalette defaults,
  }) {
    final resolvedPalette = PaletteResolver(defaults: defaults).resolve(palette);

    return ThemeData(
      brightness: brightness,
      colorScheme: _buildScheme(brightness, resolvedPalette),
      extensions: [
        AppThemeExtension(
          content: resolvedPalette.content,
          status: resolvedPalette.status,
          outlines: resolvedPalette.outlines,
        ),
      ],
    );
  }

  /// Builds a [ColorScheme] from a fully resolved palette.
  ColorScheme _buildScheme(Brightness brightness, ResolvedPalette palette) {
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