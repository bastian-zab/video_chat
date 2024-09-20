import "package:flutter/material.dart";

class GreenMaterialTheme {
  final TextTheme textTheme;

  const GreenMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff226a4c),
      surfaceTint: Color(0xff226a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaaf2cc),
      onPrimaryContainer: Color(0xff002113),
      secondary: Color(0xff4d6357),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e9d8),
      onSecondaryContainer: Color(0xff0a1f16),
      tertiary: Color(0xff3d6473),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc0e9fb),
      onTertiaryContainer: Color(0xff001f29),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fbf5),
      onSurface: Color(0xff171d19),
      onSurfaceVariant: Color(0xff404943),
      outline: Color(0xff707973),
      outlineVariant: Color(0xffc0c9c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xff8ed5b1),
      primaryFixed: Color(0xffaaf2cc),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff8ed5b1),
      onPrimaryFixedVariant: Color(0xff005236),
      secondaryFixed: Color(0xffd0e9d8),
      onSecondaryFixed: Color(0xff0a1f16),
      secondaryFixedDim: Color(0xffb4ccbd),
      onSecondaryFixedVariant: Color(0xff364b40),
      tertiaryFixed: Color(0xffc0e9fb),
      onTertiaryFixed: Color(0xff001f29),
      tertiaryFixedDim: Color(0xffa5cdde),
      onTertiaryFixedVariant: Color(0xff244c5a),
      surfaceDim: Color(0xffd6dbd6),
      surfaceBright: Color(0xfff5fbf5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae4),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004d33),
      surfaceTint: Color(0xff226a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff3b8162),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff32473c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff637a6c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1f4856),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff537a8a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fbf5),
      onSurface: Color(0xff171d19),
      onSurfaceVariant: Color(0xff3c453f),
      outline: Color(0xff58615b),
      outlineVariant: Color(0xff747d76),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xff8ed5b1),
      primaryFixed: Color(0xff3b8162),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1f684a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff637a6c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4b6154),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff537a8a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3a6170),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd6),
      surfaceBright: Color(0xfff5fbf5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae4),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002819),
      surfaceTint: Color(0xff226a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004d33),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff11261c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff32473c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002631),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1f4856),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fbf5),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1d2621),
      outline: Color(0xff3c453f),
      outlineVariant: Color(0xff3c453f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322e),
      inversePrimary: Color(0xffb3fcd5),
      primaryFixed: Color(0xff004d33),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003421),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff32473c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1c3126),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1f4856),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff01313f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd6),
      surfaceBright: Color(0xfff5fbf5),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ef),
      surfaceContainer: Color(0xffeaefe9),
      surfaceContainerHigh: Color(0xffe4eae4),
      surfaceContainerHighest: Color(0xffdee4de),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8ed5b1),
      surfaceTint: Color(0xff8ed5b1),
      onPrimary: Color(0xff003824),
      primaryContainer: Color(0xff005236),
      onPrimaryContainer: Color(0xffaaf2cc),
      secondary: Color(0xffb4ccbd),
      onSecondary: Color(0xff20352a),
      secondaryContainer: Color(0xff364b40),
      onSecondaryContainer: Color(0xffd0e9d8),
      tertiary: Color(0xffa5cdde),
      onTertiary: Color(0xff063543),
      tertiaryContainer: Color(0xff244c5a),
      onTertiaryContainer: Color(0xffc0e9fb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdee4de),
      onSurfaceVariant: Color(0xffc0c9c1),
      outline: Color(0xff8a938c),
      outlineVariant: Color(0xff404943),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff226a4c),
      primaryFixed: Color(0xffaaf2cc),
      onPrimaryFixed: Color(0xff002113),
      primaryFixedDim: Color(0xff8ed5b1),
      onPrimaryFixedVariant: Color(0xff005236),
      secondaryFixed: Color(0xffd0e9d8),
      onSecondaryFixed: Color(0xff0a1f16),
      secondaryFixedDim: Color(0xffb4ccbd),
      onSecondaryFixedVariant: Color(0xff364b40),
      tertiaryFixed: Color(0xffc0e9fb),
      onTertiaryFixed: Color(0xff001f29),
      tertiaryFixedDim: Color(0xffa5cdde),
      onTertiaryFixedVariant: Color(0xff244c5a),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b37),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b28),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff92dab5),
      surfaceTint: Color(0xff8ed5b1),
      onPrimary: Color(0xff001b0f),
      primaryContainer: Color(0xff599e7d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb8d1c1),
      onSecondary: Color(0xff051a11),
      secondaryContainer: Color(0xff7f9688),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa9d1e2),
      onTertiary: Color(0xff001922),
      tertiaryContainer: Color(0xff6f96a7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1511),
      onSurface: Color(0xfff7fcf6),
      onSurfaceVariant: Color(0xffc4cdc5),
      outline: Color(0xff9ca59e),
      outlineVariant: Color(0xff7c857f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff005337),
      primaryFixed: Color(0xffaaf2cc),
      onPrimaryFixed: Color(0xff00150b),
      primaryFixedDim: Color(0xff8ed5b1),
      onPrimaryFixedVariant: Color(0xff003f29),
      secondaryFixed: Color(0xffd0e9d8),
      onSecondaryFixed: Color(0xff02150c),
      secondaryFixedDim: Color(0xffb4ccbd),
      onSecondaryFixedVariant: Color(0xff253b2f),
      tertiaryFixed: Color(0xffc0e9fb),
      onTertiaryFixed: Color(0xff00141b),
      tertiaryFixedDim: Color(0xffa5cdde),
      onTertiaryFixedVariant: Color(0xff0f3b49),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b37),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b28),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeefff2),
      surfaceTint: Color(0xff8ed5b1),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff92dab5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeefff2),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8d1c1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff6fbff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa9d1e2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff4fdf5),
      outline: Color(0xffc4cdc5),
      outlineVariant: Color(0xffc4cdc5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4de),
      inversePrimary: Color(0xff00311f),
      primaryFixed: Color(0xffaef6d0),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff92dab5),
      onPrimaryFixedVariant: Color(0xff001b0f),
      secondaryFixed: Color(0xffd4eddc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb8d1c1),
      onSecondaryFixedVariant: Color(0xff051a11),
      tertiaryFixed: Color(0xffc5edff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa9d1e2),
      onTertiaryFixedVariant: Color(0xff001922),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b37),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b28),
      surfaceContainerHighest: Color(0xff303632),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
