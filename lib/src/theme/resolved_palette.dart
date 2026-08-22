import 'package:flutter/material.dart';

/// Defines a fully resolved color palette.
///
/// Unlike [AppPalette], this palette contains no nullable values.
/// All colors are guaranteed to be available after resolving the user's palette with a set of default values.
class ResolvedPalette {
  final ResolvedBrandColors brand;
  final ResolvedSurfaceColors surfaces;
  final ResolvedContentColors content;
  final ResolvedStatusColors status;
  final ResolvedOutlinesColors outlines;

  /// Creates a fully resolved color palette.
  const ResolvedPalette({
    required this.brand,
    required this.surfaces,
    required this.content,
    required this.status,
    required this.outlines,
  });
}

/// Defines the resolved colors associated with the application brand.
class ResolvedBrandColors {
  final Color primary;
  final Color secondary;

  final Color onPrimary;
  final Color onSecondary;

  const ResolvedBrandColors({
    required this.primary,
    required this.secondary,
    required this.onPrimary,
    required this.onSecondary,
  });
}

/// Defines the resolved colors used for backgrounds and surfaces.
class ResolvedSurfaceColors {
  final Color background;
  final Color surface;
  final Color surfaceVariant;

  final Color onBackground;
  final Color onSurface;
  final Color onSurfaceVariant;

  const ResolvedSurfaceColors({
    required this.background,
    required this.surface,
    required this.surfaceVariant,
    required this.onBackground,
    required this.onSurface,
    required this.onSurfaceVariant,
  });
}

/// Defines the resolved colors used for text and other content.
class ResolvedContentColors {
  final Color text;
  final Color textSecondary;
  final Color textDisabled;

  const ResolvedContentColors({
    required this.text,
    required this.textSecondary,
    required this.textDisabled,
  });

  ResolvedContentColors lerp(ResolvedContentColors other, double t) {
    return ResolvedContentColors(
      text: Color.lerp(text, other.text, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
    );
  }
}

/// Defines the resolved colors used to communicate application states and feedback.
class ResolvedStatusColors {
  final Color error;
  final Color onError;

  final Color warning;
  final Color onWarning;

  final Color success;
  final Color onSuccess;

  final Color info;
  final Color onInfo;

  const ResolvedStatusColors({
    required this.error,
    required this.onError,
    required this.warning,
    required this.onWarning,
    required this.success,
    required this.onSuccess,
    required this.info,
    required this.onInfo,
  });

  ResolvedStatusColors lerp(ResolvedStatusColors other, double t) {
    return ResolvedStatusColors(
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      info: Color.lerp(info, other.info, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
    );
  }
}

/// Defines the resolved colors used for widget outlines.
class ResolvedOutlinesColors {
  final Color outline;
  final Color outlineVariant;

  const ResolvedOutlinesColors({
    required this.outline,
    required this.outlineVariant,
  });

  ResolvedOutlinesColors lerp(ResolvedOutlinesColors other, double t) {
    return ResolvedOutlinesColors(
      outline: Color.lerp(outline, other.outline, t)!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
    );
  }
}