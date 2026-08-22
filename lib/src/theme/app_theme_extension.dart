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
}