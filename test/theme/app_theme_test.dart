import 'package:app_kit/app_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds the resolved palette to ThemeData.extensions', () {
    const palette = AppPalette(
      content: AppContentColors(text: Color(0xFF010203)),
      status: AppStatusColors(success: Color(0xFF040506)),
      outlines: AppOutlinesColors(outlineVariant: Color(0xFF070809)),
    );

    final theme = AppTheme(lightPalette: palette).light;
    final extension = theme.extension<AppThemeExtension>();

    expect(extension, isNotNull);
    expect(extension!.content.text, const Color(0xFF010203));
    expect(extension.content.textSecondary, const Color(0xFF49454F));
    expect(extension.status.success, const Color(0xFF040506));
    expect(extension.status.error, const Color(0xFFBA1A1A));
    expect(extension.outlines.outlineVariant, const Color(0xFF070809));
    expect(extension.outlines.outline, const Color(0xFF79747E));
  });

  test('uses the dark palette defaults in ThemeData.extensions', () {
    final extension = AppTheme().dark.extension<AppThemeExtension>();

    expect(extension, isNotNull);
    expect(extension!.content.text, const Color(0xFFE6E1E5));
    expect(extension.status.error, const Color(0xFFFFB4AB));
    expect(extension.outlines.outline, const Color(0xFF938F99));
  });
}