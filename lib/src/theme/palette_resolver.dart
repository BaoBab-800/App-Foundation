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
      tertiary: palette?.tertiary ?? defaults.tertiary,

      onPrimary: palette?.onPrimary ?? defaults.onPrimary,
      onSecondary: palette?.onSecondary ?? defaults.onSecondary,
      onTertiary: palette?.onTertiary ?? defaults.onTertiary,
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
      textTertiary: palette?.textTertiary ?? defaults.textTertiary,
      textDisabled: palette?.textDisabled ?? defaults.textDisabled,
      textInverse: palette?.textInverse ?? defaults.textInverse,
    );
  }

  ResolvedStatusColors _resolveStatus(
      AppStatusColors? palette,
      ResolvedStatusColors defaults,
      ) {
    return ResolvedStatusColors(
      error: palette?.error ?? defaults.error,
      onError: palette?.onError ?? defaults.onError,
      errorContainer: palette?.errorContainer ?? defaults.errorContainer,
      onErrorContainer: palette?.onErrorContainer ?? defaults.onErrorContainer,

      warning: palette?.warning ?? defaults.warning,
      onWarning: palette?.onWarning ?? defaults.onWarning,
      warningContainer: palette?.warningContainer ?? defaults.warningContainer,
      onWarningContainer: palette?.onWarningContainer ?? defaults.onWarningContainer,

      success: palette?.success ?? defaults.success,
      onSuccess: palette?.onSuccess ?? defaults.onSuccess,
      successContainer: palette?.successContainer ?? defaults.successContainer,
      onSuccessContainer: palette?.onSuccessContainer ?? defaults.onSuccessContainer,

      info: palette?.info ?? defaults.info,
      onInfo: palette?.onInfo ?? defaults.onInfo,
      infoContainer: palette?.infoContainer ?? defaults.infoContainer,
      onInfoContainer: palette?.onInfoContainer ?? defaults.onInfoContainer,
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