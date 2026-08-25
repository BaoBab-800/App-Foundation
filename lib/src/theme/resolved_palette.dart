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
  final Color tertiary;

  final Color onPrimary;
  final Color onSecondary;
  final Color onTertiary;

  const ResolvedBrandColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,

    required this.onPrimary,
    required this.onSecondary,
    required this.onTertiary,
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
  final Color textTertiary;
  final Color textDisabled;
  final Color textInverse;

  const ResolvedContentColors({
    required this.text,
    required this.textSecondary,
    required this.textTertiary,
    required this.textDisabled,
    required this.textInverse,
  });

  ResolvedContentColors lerp(ResolvedContentColors other, double t) {
    return ResolvedContentColors(
      text: Color.lerp(text, other.text, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
    );
  }
}

/// Defines the resolved colors used to communicate application states and feedback.
class ResolvedStatusColors {
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;

  final Color warning;
  final Color onWarning;
  final Color warningContainer;
  final Color onWarningContainer;

  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;

  final Color info;
  final Color onInfo;
  final Color infoContainer;
  final Color onInfoContainer;

  const ResolvedStatusColors({
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,

    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,

    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,

    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
  });

  ResolvedStatusColors lerp(ResolvedStatusColors other, double t) {
    return ResolvedStatusColors(
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t)!,

      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t)!,
      onWarningContainer: Color.lerp(onWarningContainer, other.onWarningContainer, t)!,

      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      successContainer: Color.lerp(successContainer, other.successContainer, t)!,
      onSuccessContainer: Color.lerp(onSuccessContainer, other.onSuccessContainer, t)!,

      info: Color.lerp(info, other.info, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t)!,
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t)!,
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