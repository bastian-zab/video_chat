import "package:flutter/material.dart";

class RedMaterialTheme {
  final TextTheme textTheme;

  const RedMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8c4a60),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9e2),
      onPrimaryContainer: Color(0xff3a071d),
      secondary: Color(0xff74565f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd9e2),
      onSecondaryContainer: Color(0xff2b151c),
      tertiary: Color(0xff7c5635),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdcc1),
      onTertiaryContainer: Color(0xff2e1500),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      onSurfaceVariant: Color(0xff514347),
      outline: Color(0xff837377),
      outlineVariant: Color(0xffd5c2c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xffffb1c8),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff3a071d),
      primaryFixedDim: Color(0xffffb1c8),
      onPrimaryFixedVariant: Color(0xff703348),
      secondaryFixed: Color(0xffffd9e2),
      onSecondaryFixed: Color(0xff2b151c),
      secondaryFixedDim: Color(0xffe3bdc6),
      onSecondaryFixedVariant: Color(0xff5a3f47),
      tertiaryFixed: Color(0xffffdcc1),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff623f20),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6b2f44),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa55f76),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff563b43),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8c6c75),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5d3b1c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff956c49),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      onSurfaceVariant: Color(0xff4d3f43),
      outline: Color(0xff6a5b5f),
      outlineVariant: Color(0xff87777a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xffffb1c8),
      primaryFixed: Color(0xffa55f76),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff89475e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8c6c75),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff71545c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff956c49),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7a5433),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff420e24),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6b2f44),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff321b23),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff563b43),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff371b01),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5d3b1c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2c2124),
      outline: Color(0xff4d3f43),
      outlineVariant: Color(0xff4d3f43),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xffffe6eb),
      primaryFixed: Color(0xff6b2f44),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff50192e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff563b43),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3e262d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5d3b1c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff432608),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb1c8),
      surfaceTint: Color(0xffffb1c8),
      onPrimary: Color(0xff541d32),
      primaryContainer: Color(0xff703348),
      onPrimaryContainer: Color(0xffffd9e2),
      secondary: Color(0xffe3bdc6),
      onSecondary: Color(0xff422931),
      secondaryContainer: Color(0xff5a3f47),
      onSecondaryContainer: Color(0xffffd9e2),
      tertiary: Color(0xffefbd94),
      onTertiary: Color(0xff48290b),
      tertiaryContainer: Color(0xff623f20),
      onTertiaryContainer: Color(0xffffdcc1),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff191113),
      onSurface: Color(0xffefdfe1),
      onSurfaceVariant: Color(0xffd5c2c6),
      outline: Color(0xff9e8c90),
      outlineVariant: Color(0xff514347),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff8c4a60),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff3a071d),
      primaryFixedDim: Color(0xffffb1c8),
      onPrimaryFixedVariant: Color(0xff703348),
      secondaryFixed: Color(0xffffd9e2),
      onSecondaryFixed: Color(0xff2b151c),
      secondaryFixedDim: Color(0xffe3bdc6),
      onSecondaryFixedVariant: Color(0xff5a3f47),
      tertiaryFixed: Color(0xffffdcc1),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff623f20),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb7cc),
      surfaceTint: Color(0xffffb1c8),
      onPrimary: Color(0xff330218),
      primaryContainer: Color(0xffc67b92),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe7c1cb),
      onSecondary: Color(0xff251017),
      secondaryContainer: Color(0xffaa8891),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff3c198),
      onTertiary: Color(0xff261100),
      tertiaryContainer: Color(0xffb48862),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191113),
      onSurface: Color(0xfffff9f9),
      onSurfaceVariant: Color(0xffdac6ca),
      outline: Color(0xffb19ea2),
      outlineVariant: Color(0xff907f83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff71344a),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff2b0012),
      primaryFixedDim: Color(0xffffb1c8),
      onPrimaryFixedVariant: Color(0xff5b2238),
      secondaryFixed: Color(0xffffd9e2),
      onSecondaryFixed: Color(0xff1f0b12),
      secondaryFixedDim: Color(0xffe3bdc6),
      onSecondaryFixedVariant: Color(0xff482f37),
      tertiaryFixed: Color(0xffffdcc1),
      onTertiaryFixed: Color(0xff1f0c00),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff4e2f11),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb1c8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb7cc),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe7c1cb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff3c198),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191113),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdac6ca),
      outlineVariant: Color(0xffdac6ca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff4c162c),
      primaryFixed: Color(0xffffdfe6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb7cc),
      onPrimaryFixedVariant: Color(0xff330218),
      secondaryFixed: Color(0xffffdfe6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7c1cb),
      onSecondaryFixedVariant: Color(0xff251017),
      tertiaryFixed: Color(0xffffe1cc),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff3c198),
      onTertiaryFixedVariant: Color(0xff261100),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
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
