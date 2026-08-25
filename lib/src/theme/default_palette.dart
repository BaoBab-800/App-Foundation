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
    error: Color(0xFFB3261E),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFF9DEDC),
    onErrorContainer: Color(0xFF410E0B),

    warning: Color(0xFF8A5700),
    onWarning: Color(0xFFFFFFFF),
    warningContainer: Color(0xFFFFDDB3),
    onWarningContainer: Color(0xFF2B1700),

    success: Color(0xFF386A20),
    onSuccess: Color(0xFFFFFFFF),
    successContainer: Color(0xFFB7F397),
    onSuccessContainer: Color(0xFF0F2006),

    info: Color(0xFF00639B),
    onInfo: Color(0xFFFFFFFF),
    infoContainer: Color(0xFFCBE6FF),
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
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF601410),
    errorContainer: Color(0xFF8C1D18),
    onErrorContainer: Color(0xFFF9DEDC),

    warning: Color(0xFFFFB95C),
    onWarning: Color(0xFF462A00),
    warningContainer: Color(0xFF654000),
    onWarningContainer: Color(0xFFFFDDB3),

    success: Color(0xFF9CD67D),
    onSuccess: Color(0xFF193600),
    successContainer: Color(0xFF275016),
    onSuccessContainer: Color(0xFFB7F397),

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