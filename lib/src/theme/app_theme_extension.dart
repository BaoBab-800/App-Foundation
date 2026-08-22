import 'package:flutter/material.dart';
import 'resolved_palette.dart';

/// Provides additional application-specific colors through Flutter's
/// [ThemeExtension] system.
///
/// Use this extension for semantic colors that are not represented by
/// Flutter's standard [ColorScheme].
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final ResolvedContentColors content;
  final ResolvedStatusColors status;
  final ResolvedOutlinesColors outlines;

  const AppThemeExtension({
    required this.content,
    required this.status,
    required this.outlines,
  });

  /// Creates a copy of this extension with the specified values replaced.
  @override
  AppThemeExtension copyWith({
    ResolvedContentColors? content,
    ResolvedStatusColors? status,
    ResolvedOutlinesColors? outlines,
  }) {
    return AppThemeExtension(
      content: content ?? this.content,
      status: status ?? this.status,
      outlines: outlines ?? this.outlines,
    );
  }

  /// Interpolates between this extension and another theme extension.
  @override
  AppThemeExtension lerp(
      covariant AppThemeExtension? other,
      double t,
      ) {
    if (other == null) {
      return this;
    }

    return AppThemeExtension(
      content: content.lerp(other.content, t),
      status: status.lerp(other.status, t),
      outlines: outlines.lerp(other.outlines, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AppThemeExtension &&
            content.text == other.content.text &&
            content.textSecondary == other.content.textSecondary &&
            content.textDisabled == other.content.textDisabled &&
            status.error == other.status.error &&
            status.onError == other.status.onError &&
            status.warning == other.status.warning &&
            status.onWarning == other.status.onWarning &&
            status.success == other.status.success &&
            status.onSuccess == other.status.onSuccess &&
            status.info == other.status.info &&
            status.onInfo == other.status.onInfo &&
            outlines.outline == other.outlines.outline &&
            outlines.outlineVariant == other.outlines.outlineVariant;
  }

  @override
  int get hashCode => Object.hashAll([
    content.text,
    content.textSecondary,
    content.textDisabled,
    status.error,
    status.onError,
    status.warning,
    status.onWarning,
    status.success,
    status.onSuccess,
    status.info,
    status.onInfo,
    outlines.outline,
    outlines.outlineVariant,
  ]);
}