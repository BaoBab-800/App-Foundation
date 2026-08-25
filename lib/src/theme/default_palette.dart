import 'package:flutter/material.dart';

import 'resolved_palette.dart';

/// Default light palette
const defaultLightPalette = ResolvedPalette(
  brand: ResolvedBrandColors(
    primary: Color(0xFF6750A4),
    secondary: Color(0xFF625B71),
    tertiary: Color(0xFF7D5260),

    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onTertiary: Color(0xFFFFFFFF),
  ),

  surfaces: ResolvedSurfaceColors(
    background: Color(0xFFFFFBFE),
    surface: Color(0xFFFFFBFE),
    surfaceVariant: Color(0xFFE7E0EC),

    onBackground: Color(0xFF1C1B1F),
    onSurface: Color(0xFF1C1B1F),
    onSurfaceVariant: Color(0xFF49454F),
  ),

  content: ResolvedContentColors(
    text: Color(0xFF1C1B1F),
    textSecondary: Color(0xFF49454F),
    textTertiary: Color(0xFF79747E),
    textDisabled: Color(0xFF9E9E9E),
    textInverse: Color(0xFFFFFFFF),
  ),

  status: ResolvedStatusColors(
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),

    warning: Color(0xFF895800),
    onWarning: Color(0xFFFFFFFF),
    warningContainer: Color(0xFFFFDDB3),
    onWarningContainer: Color(0xFF2C1600),

    success: Color(0xFF39701F),
    onSuccess: Color(0xFFFFFFFF),
    successContainer: Color(0xFFB8F397),
    onSuccessContainer: Color(0xFF102000),

    info: Color(0xFF0068A6),
    onInfo: Color(0xFFFFFFFF),
    infoContainer: Color(0xFFC9E6FF),
    onInfoContainer: Color(0xFF001D32),
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color(0xFF79747E),
    outlineVariant: Color(0xFFCAC4D0),
  ),
);

/// Default dark palette
const defaultDarkPalette = ResolvedPalette(
  brand: ResolvedBrandColors(
    primary: Color(0xFFD0BCFF),
    secondary: Color(0xFFCCC2DC),
    tertiary: Color(0xFFEFB8C8),

    onPrimary: Color(0xFF381E72),
    onSecondary: Color(0xFF332D41),
    onTertiary: Color(0xFF492532),
  ),

  surfaces: ResolvedSurfaceColors(
    background: Color(0xFF141218),
    surface: Color(0xFF141218),
    surfaceVariant: Color(0xFF49454F),

    onBackground: Color(0xFFE6E0E9),
    onSurface: Color(0xFFE6E0E9),
    onSurfaceVariant: Color(0xFFCAC4D0),
  ),

  content: ResolvedContentColors(
    text: Color(0xFFE6E1E5),
    textSecondary: Color(0xFFCAC4D0),
    textTertiary: Color(0xFF938F99),
    textDisabled: Color(0xFF77747A),
    textInverse: Color(0xFF1C1B1F),
  ),

  status: ResolvedStatusColors(
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),

    warning: Color(0xFFFFC44D),
    onWarning: Color(0xFF3F2700),
    warningContainer: Color(0xFF704900),
    onWarningContainer: Color(0xFFFFDDB0),

    success: Color(0xFF91D36F),
    onSuccess: Color(0xFF163600),
    successContainer: Color(0xFF2D5719),
    onSuccessContainer: Color(0xFFB8F39A),

    info: Color(0xFF96CCF8),
    onInfo: Color(0xFF00344F),
    infoContainer: Color(0xFF004A6F),
    onInfoContainer: Color(0xFFCBE6FF),
  ),

  outlines: ResolvedOutlinesColors(
    outline: Color(0xFF938F99),
    outlineVariant: Color(0xFF49454F),
  ),
);