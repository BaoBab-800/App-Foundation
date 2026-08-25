import 'package:flutter/material.dart';

/// Defines the color palette for a single theme brightness.
///
/// A palette contains semantic colors grouped by their purpose.
/// It can be used to build either a light or a dark theme.
///
/// If null is passed to the constructor, the default color will be taken.
class AppPalette {
  final AppBrandColors? brand;
  final AppSurfaceColors? surfaces;
  final AppContentColors? content;
  final AppStatusColors? status;
  final AppOutlinesColors? outlines;

  const AppPalette({
    this.brand,
    this.surfaces,
    this.content,
    this.status,
    this.outlines,
  });
}

/// Defines the primary colors associated with the application's brand.
class AppBrandColors {
  final Color? primary;
  final Color? secondary;
  final Color? tertiary;

  final Color? onPrimary;
  final Color? onSecondary;
  final Color? onTertiary;

  const AppBrandColors({
    this.primary,
    this.secondary,
    this.tertiary,

    this.onPrimary,
    this.onSecondary,
    this.onTertiary,
  });
}

/// Defines colors used for backgrounds and surfaces.
class AppSurfaceColors {
  final Color? background;
  final Color? surface;
  final Color? surfaceVariant;

  final Color? onBackground;
  final Color? onSurface;
  final Color? onSurfaceVariant;

  const AppSurfaceColors({
    this.background,
    this.surface,
    this.surfaceVariant,
    this.onBackground,
    this.onSurface,
    this.onSurfaceVariant,
  });
}

/// Defines colors used for text and other content.
class AppContentColors {
  final Color? text;
  final Color? textSecondary;
  final Color? textTertiary;
  final Color? textDisabled;
  final Color? textInverse;

  const AppContentColors({
    this.text,
    this.textSecondary,
    this.textTertiary,
    this.textDisabled,
    this.textInverse,
  });
}

/// Defines colors used to communicate application states and feedback.
class AppStatusColors {
  final Color? error;
  final Color? onError;
  final Color? errorContainer;
  final Color? onErrorContainer;

  final Color? warning;
  final Color? onWarning;
  final Color? warningContainer;
  final Color? onWarningContainer;

  final Color? success;
  final Color? onSuccess;
  final Color? successContainer;
  final Color? onSuccessContainer;

  final Color? info;
  final Color? onInfo;
  final Color? infoContainer;
  final Color? onInfoContainer;

  const AppStatusColors({
    this.error,
    this.onError,
    this.errorContainer,
    this.onErrorContainer,

    this.warning,
    this.onWarning,
    this.warningContainer,
    this.onWarningContainer,

    this.success,
    this.onSuccess,
    this.successContainer,
    this.onSuccessContainer,

    this.info,
    this.onInfo,
    this.infoContainer,
    this.onInfoContainer,
  });
}

/// Defines colors of the outlines to indicate the borders of widgets.
class AppOutlinesColors {
  final Color? outline;
  final Color? outlineVariant;

  const AppOutlinesColors({
    this.outline,
    this.outlineVariant,
  });
}