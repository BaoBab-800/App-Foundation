import 'package:app_foundation/src/theme/app_theme_extension.dart';
import 'package:app_foundation/src/theme/resolved_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppThemeExtension.copyWith', () {
    test('without arguments returns an equivalent extension', () {
      expect(_first.copyWith(), _first);
    });

    test('replaces content when it is supplied', () {
      final result = _first.copyWith(content: _second.content);

      expect(result.content, same(_second.content));
      expect(result.status, same(_first.status));
      expect(result.outlines, same(_first.outlines));
    });

    test('replaces status when it is supplied', () {
      final result = _first.copyWith(status: _second.status);

      expect(result.content, same(_first.content));
      expect(result.status, same(_second.status));
      expect(result.outlines, same(_first.outlines));
    });

    test('replaces outlines when they are supplied', () {
      final result = _first.copyWith(outlines: _second.outlines);

      expect(result.content, same(_first.content));
      expect(result.status, same(_first.status));
      expect(result.outlines, same(_second.outlines));
    });
  });

  group('AppThemeExtension.lerp', () {
    test('lerp(0) returns the first theme colors', () {
      _expectColors(_first.lerp(_second, 0), _first);
    });

    test('lerp(1) returns the second theme colors', () {
      _expectColors(_first.lerp(_second, 1), _second);
    });

    test('lerp(0.5) interpolates every color', () {
      final result = _first.lerp(_second, .5);

      _expectColors(result, _lerpExtension(_first, _second, .5));
    });

    test('lerp(null) returns the current extension', () {
      expect(_first.lerp(null, .5), same(_first));
    });
  });
}

const _first = AppThemeExtension(
  content: ResolvedContentColors(
    text: Color(0xFF102030),
    textSecondary: Color(0xFF405060),
    textTertiary: Color(0xFF506070),
    textDisabled: Color(0xFF708090),
    textInverse: Color(0xFF90A0B0),
  ),

  status: ResolvedStatusColors(
    error: Color(0xFF112233),
    onError: Color(0xFF223344),
    errorContainer: Color(0xFF334455),
    onErrorContainer: Color(0xFF445566),

    warning: Color(0xFF334455),
    onWarning: Color(0xFF445566),
    warningContainer: Color(0xFF556677),
    onWarningContainer: Color(0xFF667788),

    success: Color(0xFF556677),
    onSuccess: Color(0xFF667788),
    successContainer: Color(0xFF778899),
    onSuccessContainer: Color(0xFF8899AA),

    info: Color(0xFF778899),
    onInfo: Color(0xFF8899AA),
    infoContainer: Color(0xFF99AABB),
    onInfoContainer: Color(0xFFAABBCC),
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color(0xFF99AABB),
    outlineVariant: Color(0xFFAABBCC),
  ),
);

const _second = AppThemeExtension(
  content: ResolvedContentColors(
    text: Color(0xFF203040),
    textSecondary: Color(0xFF506070),
    textTertiary: Color(0xFF607080),
    textDisabled: Color(0xFF8090A0),
    textInverse: Color(0xFFA0B0C0),
  ),

  status: ResolvedStatusColors(
    error: Color(0xFF213243),
    onError: Color(0xFF324354),
    errorContainer: Color(0xFF435465),
    onErrorContainer: Color(0xFF546576),

    warning: Color(0xFF435465),
    onWarning: Color(0xFF546576),
    warningContainer: Color(0xFF657687),
    onWarningContainer: Color(0xFF768798),

    success: Color(0xFF657687),
    onSuccess: Color(0xFF768798),
    successContainer: Color(0xFF8798A9),
    onSuccessContainer: Color(0xFF98A9BA),

    info: Color(0xFF8798A9),
    onInfo: Color(0xFF98A9BA),
    infoContainer: Color(0xFFA9BACB),
    onInfoContainer: Color(0xFFBACBDC),
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color(0xFFA9BACB),
    outlineVariant: Color(0xFFBACBDC),
  ),
);

AppThemeExtension _lerpExtension(
    AppThemeExtension first,
    AppThemeExtension second,
    double t,
    ) => AppThemeExtension(
  content: ResolvedContentColors(
    text: Color.lerp(
      first.content.text, second.content.text, t,
    )!,
    textSecondary: Color.lerp(
      first.content.textSecondary, second.content.textSecondary, t,
    )!,
    textTertiary: Color.lerp(
      first.content.textTertiary, second.content.textTertiary, t,
    )!,
    textDisabled: Color.lerp(
      first.content.textDisabled, second.content.textDisabled, t,
    )!,
    textInverse: Color.lerp(
      first.content.textInverse, second.content.textInverse, t,
    )!,
  ),

  status: ResolvedStatusColors(
    error: Color.lerp(
      first.status.error, second.status.error, t,
    )!,
    onError: Color.lerp(
      first.status.onError, second.status.onError, t,
    )!,
    errorContainer: Color.lerp(
      first.status.errorContainer, second.status.errorContainer, t,
    )!,
    onErrorContainer: Color.lerp(
      first.status.onErrorContainer, second.status.onErrorContainer, t,
    )!,

    warning: Color.lerp(
      first.status.warning, second.status.warning, t,
    )!,
    onWarning: Color.lerp(
      first.status.onWarning, second.status.onWarning, t,
    )!,
    warningContainer: Color.lerp(
      first.status.warningContainer, second.status.warningContainer, t,
    )!,
    onWarningContainer: Color.lerp(
      first.status.onWarningContainer, second.status.onWarningContainer, t,
    )!,

    success: Color.lerp(
      first.status.success, second.status.success, t,
    )!,
    onSuccess: Color.lerp(
      first.status.onSuccess, second.status.onSuccess, t,
    )!,
    successContainer: Color.lerp(
      first.status.successContainer, second.status.successContainer, t,
    )!,
    onSuccessContainer: Color.lerp(
      first.status.onSuccessContainer, second.status.onSuccessContainer, t,
    )!,

    info: Color.lerp(
      first.status.info, second.status.info, t,
    )!,
    onInfo: Color.lerp(
      first.status.onInfo, second.status.onInfo, t,
    )!,
    infoContainer: Color.lerp(
      first.status.infoContainer, second.status.infoContainer, t,
    )!,
    onInfoContainer: Color.lerp(
      first.status.onInfoContainer, second.status.onInfoContainer, t,
    )!,
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color.lerp(first.outlines.outline, second.outlines.outline, t)!,
    outlineVariant: Color.lerp(
      first.outlines.outlineVariant, second.outlines.outlineVariant, t,
    )!,
  ),
);

void _expectColors(AppThemeExtension actual, AppThemeExtension expected) {
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