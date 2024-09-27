import "package:flutter/material.dart";

class PurpleTheme {
  final TextTheme textTheme;

  const PurpleTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff615690),
      surfaceTint: Color(0xff615690),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe6deff),
      onPrimaryContainer: Color(0xff1d1148),
      secondary: Color(0xff605b71),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe6dff9),
      onSecondaryContainer: Color(0xff1d192b),
      tertiary: Color(0xff7c5263),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e5),
      onTertiaryContainer: Color(0xff30111f),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff1c1b20),
      onSurfaceVariant: Color(0xff48454e),
      outline: Color(0xff79757f),
      outlineVariant: Color(0xffc9c4d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffcbbeff),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff1d1148),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff493e76),
      secondaryFixed: Color(0xffe6dff9),
      onSecondaryFixed: Color(0xff1d192b),
      secondaryFixedDim: Color(0xffcac3dc),
      onSecondaryFixedVariant: Color(0xff484458),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff30111f),
      tertiaryFixedDim: Color(0xffeeb8cb),
      onTertiaryFixedVariant: Color(0xff623b4b),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe6e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff453a72),
      surfaceTint: Color(0xff615690),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff786ca8),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff444054),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff777188),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5e3747),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff956879),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff1c1b20),
      onSurfaceVariant: Color(0xff44414a),
      outline: Color(0xff615e67),
      outlineVariant: Color(0xff7d7983),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffcbbeff),
      primaryFixed: Color(0xff786ca8),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff5f548d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff777188),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5e596e),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff956879),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7a5060),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe6e1e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff24184f),
      surfaceTint: Color(0xff615690),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff453a72),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff232032),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff444054),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff381726),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5e3747),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff25232b),
      outline: Color(0xff44414a),
      outlineVariant: Color(0xff44414a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xfff0e9ff),
      primaryFixed: Color(0xff453a72),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2f245a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff444054),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2e2a3d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5e3747),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff452231),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe6e1e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcbbeff),
      surfaceTint: Color(0xffcbbeff),
      onPrimary: Color(0xff32285e),
      primaryContainer: Color(0xff493e76),
      onPrimaryContainer: Color(0xffe6deff),
      secondary: Color(0xffcac3dc),
      onSecondary: Color(0xff322e41),
      secondaryContainer: Color(0xff484458),
      onSecondaryContainer: Color(0xffe6dff9),
      tertiary: Color(0xffeeb8cb),
      onTertiary: Color(0xff492534),
      tertiaryContainer: Color(0xff623b4b),
      onTertiaryContainer: Color(0xffffd9e5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141318),
      onSurface: Color(0xffe6e1e9),
      onSurfaceVariant: Color(0xffc9c4d0),
      outline: Color(0xff938f99),
      outlineVariant: Color(0xff48454e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff615690),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff1d1148),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff493e76),
      secondaryFixed: Color(0xffe6dff9),
      onSecondaryFixed: Color(0xff1d192b),
      secondaryFixedDim: Color(0xffcac3dc),
      onSecondaryFixedVariant: Color(0xff484458),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff30111f),
      tertiaryFixedDim: Color(0xffeeb8cb),
      onTertiaryFixedVariant: Color(0xff623b4b),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcfc3ff),
      surfaceTint: Color(0xffcbbeff),
      onPrimary: Color(0xff180a43),
      primaryContainer: Color(0xff9488c6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcec7e0),
      onSecondary: Color(0xff171426),
      secondaryContainer: Color(0xff938da5),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff2bccf),
      onTertiary: Color(0xff2a0b1a),
      tertiaryContainer: Color(0xffb48395),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141318),
      onSurface: Color(0xfffef9ff),
      onSurfaceVariant: Color(0xffcec9d4),
      outline: Color(0xffa5a1ac),
      outlineVariant: Color(0xff85818c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff4a4078),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff12043e),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff382e65),
      secondaryFixed: Color(0xffe6dff9),
      onSecondaryFixed: Color(0xff120f20),
      secondaryFixedDim: Color(0xffcac3dc),
      onSecondaryFixedVariant: Color(0xff383447),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff240615),
      tertiaryFixedDim: Color(0xffeeb8cb),
      onTertiaryFixedVariant: Color(0xff4f2b3a),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffef9ff),
      surfaceTint: Color(0xffcbbeff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffcfc3ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffef9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcec7e0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff2bccf),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffef9ff),
      outline: Color(0xffcec9d4),
      outlineVariant: Color(0xffcec9d4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff2c2157),
      primaryFixed: Color(0xffebe3ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcfc3ff),
      onPrimaryFixedVariant: Color(0xff180a43),
      secondaryFixed: Color(0xffebe3fd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffcec7e0),
      onSecondaryFixedVariant: Color(0xff171426),
      tertiaryFixed: Color(0xffffdfe9),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff2bccf),
      onTertiaryFixedVariant: Color(0xff2a0b1a),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
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
