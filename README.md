# AppKit

A reusable Flutter toolkit for building consistent application themes.

AppKit provides a semantic color palette and a simple API for creating
light and dark Flutter themes with customizable colors and sensible defaults.

## Features

- Semantic color palettes
- Light and dark themes
- Partial palette customization
- Automatic fallback to default colors
- Material `ColorScheme` integration

## Installation

Add AppKit to your `pubspec.yaml`:

```yaml
dependencies:
  app_kit:
    path: ../app_kit
```

## Basic usage

Create an `AppTheme` and pass its themes to `MaterialApp`:

```dart
const appTheme = AppTheme();

MaterialApp(
  theme: appTheme.light,
  darkTheme: appTheme.dark,
  themeMode: ThemeMode.system,
  home: const HomePage(),
);
```

By default, AppKit provides a complete light and dark color palette.

### Customizing colors

You only need to specify the colors you want to customize:

```dart
const appTheme = AppTheme(
  lightPalette: AppPalette(
    brand: AppBrandColors(
      primary: Colors.deepPurple,
    ),
  ),
);
```

## Palette

AppKit provides a semantic color palette divided into several groups:

### Brand

Colors associated with the application's brand.

- `primary` — primary brand color.
- `secondary` — secondary brand color.
- `onPrimary` — content color used on top of `primary`.
- `onSecondary` — content color used on top of `secondary`.

### Surfaces

Colors used for backgrounds and surfaces.

- `background` — main application background.
- `surface` — color of surfaces such as cards and panels.
- `surfaceVariant` — alternative surface color.
- `onBackground` — content color used on top of `background`.
- `onSurface` — content color used on top of `surface`.
- `onSurfaceVariant` — content color used on top of `surfaceVariant`.

### Content

Colors used for text and other content.

- `text` — primary content color.
- `textSecondary` — secondary content color.
- `textDisabled` — disabled content color.

### Status

Colors used to communicate application states and feedback.

- `error` / `onError` — error state and its content color.
- `warning` / `onWarning` — warning state and its content color.
- `success` / `onSuccess` — success state and its content color.
- `info` / `onInfo` — informational state and its content color.

### Outlines

Colors used for widget borders and outlines.

- `outline` — default outline color.
- `outlineVariant` — less prominent outline color.

## Light and dark themes

AppKit supports separate palettes for light and dark themes.

You can customize both themes independently:

```dart
const appTheme = AppTheme(
  lightPalette: AppPalette(
    brand: AppBrandColors(
      primary: Colors.blue,
    ),
  ),
  darkPalette: AppPalette(
    brand: AppBrandColors(
      primary: Colors.lightBlue,
    ),
  ),
);
```

Each palette is resolved against its corresponding default palette.
Unspecified colors are automatically filled with the appropriate defaults.

The resulting themes can be passed directly to MaterialApp.

## How it works

AppKit separates theme configuration from theme generation.

The process consists of three main steps:

1. **Define a palette**

   `AppPalette` contains optional semantic colors grouped by their purpose:

    - brand
    - surfaces
    - content
    - status
    - outlines

2. **Resolve missing colors**

   `PaletteResolver` combines the user-provided palette with the corresponding default palette.

   User-provided colors always take priority. Any missing colors are filled from the defaults.

3. **Build the Flutter theme**

   The resulting `ResolvedPalette` contains all required colors and is used by `AppTheme` to build Flutter's `ColorScheme` and `ThemeData`.

The overall flow looks like this:

```text
AppPalette
    │
    ▼
PaletteResolver + Default Palette
    │
    ▼
ResolvedPalette
    │
    ▼
ColorScheme
    │
    ▼
ThemeData
```

## API overview

### AppTheme

The main entry point for configuring application themes.

- `lightPalette` — optional light theme palette.
- `darkPalette` — optional dark theme palette.
- `light` — generated light `ThemeData`.
- `dark` — generated dark `ThemeData`.

### AppPalette

Defines the colors used by a theme.

- `brand` — brand colors.
- `surfaces` — background and surface colors.
- `content` — text and content colors.
- `status` — status and feedback colors.
- `outlines` — outline and border colors.

### AppBrandColors

Defines colors associated with the application brand.

### AppSurfaceColors

Defines colors used for backgrounds and surfaces.

### AppContentColors

Defines colors used for text and other content.

### AppStatusColors

Defines colors used to communicate application states and feedback.

### AppOutlinesColors

Defines colors used for borders and outlines.