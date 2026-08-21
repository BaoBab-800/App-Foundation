import 'package:app_kit/src/theme/app_palette.dart';
import 'package:app_kit/src/theme/palette_resolver.dart';
import 'package:app_kit/src/theme/resolved_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaletteResolver', () {
    test('resolve returns defaults when palette has no colors', () {
      const defaults = _defaults;
      const resolver = PaletteResolver(defaults: defaults);

      final resolved = resolver.resolve(const AppPalette());

      _expectResolvedPalette(resolved, defaults);
    });

    test('resolve keeps palette colors and fills missing colors from defaults', () {
      const defaults = _defaults;
      const resolver = PaletteResolver(defaults: defaults);
      const palette = AppPalette(
        brand: AppBrandColors(
          primary: Color(0xFF000101),
          onSecondary: Color(0xFF000102),
        ),
        surfaces: AppSurfaceColors(
          surface: Color(0xFF000201),
          onSurfaceVariant: Color(0xFF000202),
        ),
        content: AppContentColors(
          textSecondary: Color(0xFF000301),
        ),
        status: AppStatusColors(
          warning: Color(0xFF000401),
          info: Color(0xFF000402),
        ),
        outlines: AppOutlinesColors(
          outlineVariant: Color(0xFF000501),
        ),
      );

      final resolved = resolver.resolve(palette);

      expect(resolved.brand.primary, palette.brand!.primary);
      expect(resolved.brand.secondary, defaults.brand.secondary);
      expect(resolved.brand.onPrimary, defaults.brand.onPrimary);
      expect(resolved.brand.onSecondary, palette.brand!.onSecondary);

      expect(resolved.surfaces.background, defaults.surfaces.background);
      expect(resolved.surfaces.surface, palette.surfaces!.surface);
      expect(resolved.surfaces.surfaceVariant, defaults.surfaces.surfaceVariant);
      expect(resolved.surfaces.onBackground, defaults.surfaces.onBackground);
      expect(resolved.surfaces.onSurface, defaults.surfaces.onSurface);
      expect(
        resolved.surfaces.onSurfaceVariant,
        palette.surfaces!.onSurfaceVariant,
      );

      expect(resolved.content.text, defaults.content.text);
      expect(resolved.content.textSecondary, palette.content!.textSecondary);
      expect(resolved.content.textDisabled, defaults.content.textDisabled);

      expect(resolved.status.error, defaults.status.error);
      expect(resolved.status.warning, palette.status!.warning);
      expect(resolved.status.success, defaults.status.success);
      expect(resolved.status.info, palette.status!.info);

      expect(resolved.outlines.outline, defaults.outlines.outline);
      expect(resolved.outlines.outlineVariant, palette.outlines!.outlineVariant);
    });
  });
}

const _defaults = ResolvedPalette(
  brand: ResolvedBrandColors(
    primary: Color(0xFF100001),
    secondary: Color(0xFF100002),
    onPrimary: Color(0xFF100003),
    onSecondary: Color(0xFF100004),
  ),

  surfaces: ResolvedSurfaceColors(
    background: Color(0xFF200001),
    surface: Color(0xFF200002),
    surfaceVariant: Color(0xFF200003),
    onBackground: Color(0xFF200004),
    onSurface: Color(0xFF200005),
    onSurfaceVariant: Color(0xFF200006),
  ),

  content: ResolvedContentColors(
    text: Color(0xFF300001),
    textSecondary: Color(0xFF300002),
    textDisabled: Color(0xFF300003),
  ),

  status: ResolvedStatusColors(
    error: Color(0xFF400001),
    warning: Color(0xFF400002),
    success: Color(0xFF400003),
    info: Color(0xFF400004),
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color(0xFF500001),
    outlineVariant: Color(0xFF500002),
  ),
);

void _expectResolvedPalette(ResolvedPalette actual, ResolvedPalette expected) {
  expect(actual.brand.primary, expected.brand.primary);
  expect(actual.brand.secondary, expected.brand.secondary);
  expect(actual.brand.onPrimary, expected.brand.onPrimary);
  expect(actual.brand.onSecondary, expected.brand.onSecondary);

  expect(actual.surfaces.background, expected.surfaces.background);
  expect(actual.surfaces.surface, expected.surfaces.surface);
  expect(actual.surfaces.surfaceVariant, expected.surfaces.surfaceVariant);
  expect(actual.surfaces.onBackground, expected.surfaces.onBackground);
  expect(actual.surfaces.onSurface, expected.surfaces.onSurface);
  expect(actual.surfaces.onSurfaceVariant, expected.surfaces.onSurfaceVariant);

  expect(actual.content.text, expected.content.text);
  expect(actual.content.textSecondary, expected.content.textSecondary);
  expect(actual.content.textDisabled, expected.content.textDisabled);

  expect(actual.status.error, expected.status.error);
  expect(actual.status.warning, expected.status.warning);
  expect(actual.status.success, expected.status.success);
  expect(actual.status.info, expected.status.info);

  expect(actual.outlines.outline, expected.outlines.outline);
  expect(actual.outlines.outlineVariant, expected.outlines.outlineVariant);
}