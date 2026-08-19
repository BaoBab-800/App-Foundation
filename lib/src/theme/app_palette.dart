import 'package:flutter/material.dart';

/// Defines the color palette for a single theme brightness.
///
/// A palette contains semantic colors grouped by their purpose.
/// It can be used to build either a light or a dark theme.
class AppPalette {
  final AppBrandColors brand;
  final AppSurfaceColors surfaces;
  final AppContentColors content;
  final AppStatusColors status;
  final AppOutlinesColors outlines;

  const AppPalette({
    required this.brand,
    required this.surfaces,
    required this.content,
    required this.status,
    required this.outlines,
  });
}

/// Defines the primary colors associated with the application's brand.
class AppBrandColors {
  final Color primary;
  final Color secondary;

  final Color onPrimary;
  final Color onSecondary;

  const AppBrandColors({
    required this.primary,
    required this.secondary,
    required this.onPrimary,
    required this.onSecondary,
  });
}

/// Defines colors used for backgrounds and surfaces.
class AppSurfaceColors {
  final Color background;
  final Color surface;
  final Color surfaceVariant;

  final Color onBackground;
  final Color onSurface;
  final Color onSurfaceVariant;

  const AppSurfaceColors({
    required this.background,
    required this.surface,
    required this.surfaceVariant,
    required this.onBackground,
    required this.onSurface,
    required this.onSurfaceVariant,
  });
}

/// Defines colors used for text and other content.
class AppContentColors {
  final Color text;
  final Color textSecondary;
  final Color textDisabled;

  const AppContentColors({
    required this.text,
    required this.textSecondary,
    required this.textDisabled,
  });
}

/// Defines colors used to communicate application states and feedback.
class AppStatusColors {
  final Color error;
  final Color warning;
  final Color success;
  final Color info;

  const AppStatusColors({
    required this.error,
    required this.warning,
    required this.success,
    required this.info,
  });
}

/// Defines colors of the outlines to indicate the borders of widgets.
class AppOutlinesColors {
  final Color outline;
  final Color outlineVariant;

  const AppOutlinesColors({
    required this.outline,
    required this.outlineVariant,
  });
}
