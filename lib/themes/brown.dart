import "package:flutter/material.dart";

class BrownMaterialTheme {
  final TextTheme textTheme;

  const BrownMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8d4d2d),
      surfaceTint: Color(0xff8d4d2d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbcc),
      onPrimaryContainer: Color(0xff351000),
      secondary: Color(0xff765749),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcc),
      onSecondaryContainer: Color(0xff2c160b),
      tertiary: Color(0xff665f31),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffede4a9),
      onTertiaryContainer: Color(0xff201c00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a16),
      onSurfaceVariant: Color(0xff52443d),
      outline: Color(0xff85736c),
      outlineVariant: Color(0xffd7c2ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb694),
      primaryFixed: Color(0xffffdbcc),
      onPrimaryFixed: Color(0xff351000),
      primaryFixedDim: Color(0xffffb694),
      onPrimaryFixedVariant: Color(0xff703718),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff2c160b),
      secondaryFixedDim: Color(0xffe6beac),
      onSecondaryFixedVariant: Color(0xff5c4033),
      tertiaryFixed: Color(0xffede4a9),
      onTertiaryFixed: Color(0xff201c00),
      tertiaryFixedDim: Color(0xffd1c88f),
      onTertiaryFixedVariant: Color(0xff4d481c),
      surfaceDim: Color(0xffe8d6d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5de),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6c3314),
      surfaceTint: Color(0xff8d4d2d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa86341),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff583c30),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8e6d5e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff494418),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7c7645),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff221a16),
      onSurfaceVariant: Color(0xff4e4039),
      outline: Color(0xff6c5c55),
      outlineVariant: Color(0xff897770),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffb694),
      primaryFixed: Color(0xffa86341),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8a4b2b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8e6d5e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745547),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7c7645),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff635d2f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5de),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff401500),
      surfaceTint: Color(0xff8d4d2d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6c3314),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff331d11),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff583c30),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff272300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff494418),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d211c),
      outline: Color(0xff4e4039),
      outlineVariant: Color(0xff4e4039),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2a),
      inversePrimary: Color(0xffffe7de),
      primaryFixed: Color(0xff6c3314),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4f1e02),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff583c30),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f271b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff494418),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff322d04),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1eb),
      surfaceContainer: Color(0xfffceae3),
      surfaceContainerHigh: Color(0xfff6e5de),
      surfaceContainerHighest: Color(0xfff0dfd8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb694),
      surfaceTint: Color(0xffffb694),
      onPrimary: Color(0xff542104),
      primaryContainer: Color(0xff703718),
      onPrimaryContainer: Color(0xffffdbcc),
      secondary: Color(0xffe6beac),
      onSecondary: Color(0xff432a1e),
      secondaryContainer: Color(0xff5c4033),
      onSecondaryContainer: Color(0xffffdbcc),
      tertiary: Color(0xffd1c88f),
      onTertiary: Color(0xff363107),
      tertiaryContainer: Color(0xff4d481c),
      onTertiaryContainer: Color(0xffede4a9),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfff0dfd8),
      onSurfaceVariant: Color(0xffd7c2ba),
      outline: Color(0xffa08d85),
      outlineVariant: Color(0xff52443d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff8d4d2d),
      primaryFixed: Color(0xffffdbcc),
      onPrimaryFixed: Color(0xff351000),
      primaryFixedDim: Color(0xffffb694),
      onPrimaryFixedVariant: Color(0xff703718),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff2c160b),
      secondaryFixedDim: Color(0xffe6beac),
      onSecondaryFixedVariant: Color(0xff5c4033),
      tertiaryFixed: Color(0xffede4a9),
      onTertiaryFixed: Color(0xff201c00),
      tertiaryFixedDim: Color(0xffd1c88f),
      onTertiaryFixedVariant: Color(0xff4d481c),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff423732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbb9d),
      surfaceTint: Color(0xffffb694),
      onPrimary: Color(0xff2c0c00),
      primaryContainer: Color(0xffc97e5a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc2b1),
      onSecondary: Color(0xff251107),
      secondaryContainer: Color(0xffad8979),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd5cc93),
      onTertiary: Color(0xff1a1700),
      tertiaryContainer: Color(0xff99925e),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120e),
      onSurface: Color(0xfffff9f8),
      onSurfaceVariant: Color(0xffdcc6be),
      outline: Color(0xffb39f97),
      outlineVariant: Color(0xff927f78),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff723819),
      primaryFixed: Color(0xffffdbcc),
      onPrimaryFixed: Color(0xff240900),
      primaryFixedDim: Color(0xffffb694),
      onPrimaryFixedVariant: Color(0xff5c2709),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff1f0c04),
      secondaryFixedDim: Color(0xffe6beac),
      onSecondaryFixedVariant: Color(0xff4a3024),
      tertiaryFixed: Color(0xffede4a9),
      onTertiaryFixed: Color(0xff141100),
      tertiaryFixedDim: Color(0xffd1c88f),
      onTertiaryFixedVariant: Color(0xff3c370c),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff423732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d332e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb694),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbb9d),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc2b1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf2),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd5cc93),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a120e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffdcc6be),
      outlineVariant: Color(0xffdcc6be),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dfd8),
      inversePrimary: Color(0xff4c1b01),
      primaryFixed: Color(0xffffe1d4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbb9d),
      onPrimaryFixedVariant: Color(0xff2c0c00),
      secondaryFixed: Color(0xffffe1d4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc2b1),
      onSecondaryFixedVariant: Color(0xff251107),
      tertiaryFixed: Color(0xfff2e8ad),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd5cc93),
      onTertiaryFixedVariant: Color(0xff1a1700),
      surfaceDim: Color(0xff1a120e),
      surfaceBright: Color(0xff423732),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff221a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d332e),
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
