import 'package:flutter/material.dart';

import 'app_palette.dart';

/// Default light palette
const defaultLightPalette = AppPalette(
  brand: AppBrandColors(
    primary: Color(0xFF6750A4),
    secondary: Color(0xFF625B71),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
  ),

  surfaces: AppSurfaceColors(
    background: Color(0xFFFFFBFE),
    surface: Color(0xFFFFFBFE),
    surfaceVariant: Color(0xFFE7E0EC),
    onBackground: Color(0xFF1C1B1F),
    onSurface: Color(0xFF1C1B1F),
    onSurfaceVariant: Color(0xFF49454F),
  ),

  content: AppContentColors(
    text: Color(0xFF1C1B1F),
    textSecondary: Color(0xFF49454F),
    textDisabled: Color(0xFF79747E),
  ),

  status: AppStatusColors(
    error: Color(0xFFB3261E),
    warning: Color(0xFFE6A700),
    success: Color(0xFF2E7D32),
    info: Color(0xFF1976D2),
  ),

  outlines: AppOutlinesColors(
    outline: Color(0xFF79747E),
    outlineVariant: Color(0xFFCAC4D0),
  ),
);

/// Default dark palette
const defaultDarkPalette = AppPalette(
  brand: AppBrandColors(
    primary: Color(0xFFD0BCFF),
    secondary: Color(0xFFCCC2DC),
    onPrimary: Color(0xFF381E72),
    onSecondary: Color(0xFF332D41),
  ),

  surfaces: AppSurfaceColors(
    background: Color(0xFF141218),
    surface: Color(0xFF141218),
    surfaceVariant: Color(0xFF49454F),
    onBackground: Color(0xFFE6E0E9),
    onSurface: Color(0xFFE6E0E9),
    onSurfaceVariant: Color(0xFFCAC4D0),
  ),

  content: AppContentColors(
    text: Color(0xFFE6E0E9),
    textSecondary: Color(0xFFCAC4D0),
    textDisabled: Color(0xFF938F99),
  ),

  status: AppStatusColors(
    error: Color(0xFFF2B8B5),
    warning: Color(0xFFFFD54F),
    success: Color(0xFF81C784),
    info: Color(0xFF90CAF9),
  ),

  outlines: AppOutlinesColors(
    outline: Color(0xFF938F99),
    outlineVariant: Color(0xFF49454F),
  ),
);