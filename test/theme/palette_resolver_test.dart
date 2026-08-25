import 'package:app_foundation/src/theme/app_palette.dart';
import 'package:app_foundation/src/theme/palette_resolver.dart';
import 'package:app_foundation/src/theme/resolved_palette.dart';
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
          onTertiary: Color(0xFF000103),
        ),

        surfaces: AppSurfaceColors(
          surface: Color(0xFF000201),
          onSurfaceVariant: Color(0xFF000202),
        ),

        content: AppContentColors(
          textSecondary: Color(0xFF000301),
          textInverse: Color(0xFF000302),
        ),

        status: AppStatusColors(
          error: Color(0xFF000401),
          onError: Color(0xFF000402),
          errorContainer: Color(0xFF000403),
          onErrorContainer: Color(0xFF000404),

          success: Color(0xFF000405),
          onSuccess: Color(0xFF000406),
          successContainer: Color(0xFF000407),
          onSuccessContainer: Color(0xFF000408),
        ),

        outlines: AppOutlinesColors(
          outlineVariant: Color(0xFF000501),
        ),
      );

      final resolved = resolver.resolve(palette);

      expect(resolved.brand.primary, palette.brand!.primary);
      expect(resolved.brand.secondary, defaults.brand.secondary);
      expect(resolved.brand.tertiary, defaults.brand.tertiary);
      expect(resolved.brand.onPrimary, defaults.brand.onPrimary);
      expect(resolved.brand.onSecondary, palette.brand!.onSecondary);
      expect(resolved.brand.onTertiary, palette.brand!.onTertiary);

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
      expect(resolved.content.textTertiary, defaults.content.textTertiary);
      expect(resolved.content.textDisabled, defaults.content.textDisabled);
      expect(resolved.content.textInverse, palette.content!.textInverse);

      expect(resolved.status.error, palette.status!.error);
      expect(resolved.status.onError, palette.status!.onError);
      expect(resolved.status.errorContainer, palette.status!.errorContainer);
      expect(
        resolved.status.onErrorContainer,
        palette.status!.onErrorContainer,
      );

      expect(resolved.status.warning, defaults.status.warning);
      expect(resolved.status.onWarning, defaults.status.onWarning);
      expect(resolved.status.warningContainer, defaults.status.warningContainer);
      expect(
        resolved.status.onWarningContainer,
        defaults.status.onWarningContainer,
      );

      expect(resolved.status.success, palette.status!.success);
      expect(resolved.status.onSuccess, palette.status!.onSuccess);
      expect(resolved.status.successContainer, palette.status!.successContainer);
      expect(
        resolved.status.onSuccessContainer,
        palette.status!.onSuccessContainer,
      );

      expect(resolved.status.info, defaults.status.info);
      expect(resolved.status.onInfo, defaults.status.onInfo);
      expect(resolved.status.infoContainer, defaults.status.infoContainer);
      expect(
        resolved.status.onInfoContainer,
        defaults.status.onInfoContainer,
      );

      expect(resolved.outlines.outline, defaults.outlines.outline);
      expect(resolved.outlines.outlineVariant, palette.outlines!.outlineVariant);
    });
  });
}

const _defaults = ResolvedPalette(
  brand: ResolvedBrandColors(
    primary: Color(0xFF100001),
    secondary: Color(0xFF100002),
    tertiary: Color(0xFF100003),
    onPrimary: Color(0xFF100004),
    onSecondary: Color(0xFF100005),
    onTertiary: Color(0xFF100006),
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
    textTertiary: Color(0xFF300003),
    textDisabled: Color(0xFF300004),
    textInverse: Color(0xFF300005),
  ),

  status: ResolvedStatusColors(
    error: Color(0xFF400001),
    onError: Color(0xFF400002),
    errorContainer: Color(0xFF400003),
    onErrorContainer: Color(0xFF400004),

    warning: Color(0xFF400005),
    onWarning: Color(0xFF400006),
    warningContainer: Color(0xFF400007),
    onWarningContainer: Color(0xFF400008),

    success: Color(0xFF400009),
    onSuccess: Color(0xFF40000A),
    successContainer: Color(0xFF40000B),
    onSuccessContainer: Color(0xFF40000C),

    info: Color(0xFF40000D),
    onInfo: Color(0xFF40000E),
    infoContainer: Color(0xFF40000F),
    onInfoContainer: Color(0xFF400010),
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color(0xFF500001),
    outlineVariant: Color(0xFF500002),
  ),
);

void _expectResolvedPalette(ResolvedPalette actual, ResolvedPalette expected) {
  expect(actual.brand.primary, expected.brand.primary);
  expect(actual.brand.secondary, expected.brand.secondary);
  expect(actual.brand.tertiary, expected.brand.tertiary);
  expect(actual.brand.onPrimary, expected.brand.onPrimary);
  expect(actual.brand.onSecondary, expected.brand.onSecondary);
  expect(actual.brand.onTertiary, expected.brand.onTertiary);

  expect(actual.surfaces.background, expected.surfaces.background);
  expect(actual.surfaces.surface, expected.surfaces.surface);
  expect(actual.surfaces.surfaceVariant, expected.surfaces.surfaceVariant);
  expect(actual.surfaces.onBackground, expected.surfaces.onBackground);
  expect(actual.surfaces.onSurface, expected.surfaces.onSurface);
  expect(actual.surfaces.onSurfaceVariant, expected.surfaces.onSurfaceVariant);

  expect(actual.content.text, expected.content.text);
  expect(actual.content.textSecondary, expected.content.textSecondary);
  expect(actual.content.textTertiary, expected.content.textTertiary);
  expect(actual.content.textDisabled, expected.content.textDisabled);
  expect(actual.content.textInverse, expected.content.textInverse);

  expect(actual.status.error, expected.status.error);
  expect(actual.status.onError, expected.status.onError);
  expect(actual.status.errorContainer, expected.status.errorContainer);
  expect(actual.status.onErrorContainer, expected.status.onErrorContainer);

  expect(actual.status.warning, expected.status.warning);
  expect(actual.status.onWarning, expected.status.onWarning);
  expect(actual.status.warningContainer, expected.status.warningContainer);
  expect(actual.status.onWarningContainer, expected.status.onWarningContainer);

  expect(actual.status.success, expected.status.success);
  expect(actual.status.onSuccess, expected.status.onSuccess);
  expect(actual.status.successContainer, expected.status.successContainer);
  expect(actual.status.onSuccessContainer, expected.status.onSuccessContainer);

  expect(actual.status.info, expected.status.info);
  expect(actual.status.onInfo, expected.status.onInfo);
  expect(actual.status.infoContainer, expected.status.infoContainer);
  expect(actual.status.onInfoContainer, expected.status.onInfoContainer);

  expect(actual.outlines.outline, expected.outlines.outline);
  expect(actual.outlines.outlineVariant, expected.outlines.outlineVariant);
}