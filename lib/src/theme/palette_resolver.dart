import 'app_palette.dart';
import 'resolved_palette.dart';

/// Resolves a user-defined [AppPalette] by filling missing values
/// with the provided default palette.
class PaletteResolver {
  /// The fully resolved palette used as a fallback for missing values.
  final ResolvedPalette defaults;

  const PaletteResolver({
    required this.defaults,
  });

  /// Resolves [palette] into a fully populated [ResolvedPalette].
  ///
  /// User-defined values always take precedence over default values.
  ResolvedPalette resolve(AppPalette palette) {
    return ResolvedPalette(
      brand: _resolveBrand(
        palette.brand,
        defaults.brand,
      ),
      surfaces: _resolveSurfaces(
        palette.surfaces,
        defaults.surfaces,
      ),
      content: _resolveContent(
        palette.content,
        defaults.content,
      ),
      status: _resolveStatus(
        palette.status,
        defaults.status,
      ),
      outlines: _resolveOutlines(
        palette.outlines,
        defaults.outlines,
      ),
    );
  }

  ResolvedBrandColors _resolveBrand(
      AppBrandColors? palette,
      ResolvedBrandColors defaults,
      ) {
    return ResolvedBrandColors(
      primary: palette?.primary ?? defaults.primary,
      secondary: palette?.secondary ?? defaults.secondary,
      onPrimary: palette?.onPrimary ?? defaults.onPrimary,
      onSecondary: palette?.onSecondary ?? defaults.onSecondary,
    );
  }

  ResolvedSurfaceColors _resolveSurfaces(
      AppSurfaceColors? palette,
      ResolvedSurfaceColors defaults,
      ) {
    return ResolvedSurfaceColors(
      background: palette?.background ?? defaults.background,
      surface: palette?.surface ?? defaults.surface,
      surfaceVariant: palette?.surfaceVariant ?? defaults.surfaceVariant,
      onBackground: palette?.onBackground ?? defaults.onBackground,
      onSurface: palette?.onSurface ?? defaults.onSurface,
      onSurfaceVariant: palette?.onSurfaceVariant ?? defaults.onSurfaceVariant,
    );
  }

  ResolvedContentColors _resolveContent(
      AppContentColors? palette,
      ResolvedContentColors defaults,
      ) {
    return ResolvedContentColors(
      text: palette?.text ?? defaults.text,
      textSecondary: palette?.textSecondary ?? defaults.textSecondary,
      textDisabled: palette?.textDisabled ?? defaults.textDisabled,
    );
  }

  ResolvedStatusColors _resolveStatus(
      AppStatusColors? palette,
      ResolvedStatusColors defaults,
      ) {
    return ResolvedStatusColors(
      error: palette?.error ?? defaults.error,
      warning: palette?.warning ?? defaults.warning,
      success: palette?.success ?? defaults.success,
      info: palette?.info ?? defaults.info,
    );
  }

  ResolvedOutlinesColors _resolveOutlines(
      AppOutlinesColors? palette,
      ResolvedOutlinesColors defaults,
      ) {
    return ResolvedOutlinesColors(
      outline: palette?.outline ?? defaults.outline,
      outlineVariant: palette?.outlineVariant ?? defaults.outlineVariant,
    );
  }
}