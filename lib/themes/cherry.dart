import "package:flutter/material.dart";

class CherryTheme {
  final TextTheme textTheme;

  const CherryTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4a50),
      surfaceTint: Color(0xff8f4a50),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdadb),
      onPrimaryContainer: Color(0xff3b0811),
      secondary: Color(0xff765658),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdadb),
      onSecondaryContainer: Color(0xff2c1517),
      tertiary: Color(0xff775930),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb4),
      onTertiaryContainer: Color(0xff291800),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      onSurfaceVariant: Color(0xff524344),
      outline: Color(0xff857373),
      outlineVariant: Color(0xffd7c1c2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffb2b7),
      primaryFixed: Color(0xffffdadb),
      onPrimaryFixed: Color(0xff3b0811),
      primaryFixedDim: Color(0xffffb2b7),
      onPrimaryFixedVariant: Color(0xff72333a),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff2c1517),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff5c3f41),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff291800),
      tertiaryFixedDim: Color(0xffe7c08e),
      onTertiaryFixedVariant: Color(0xff5d421b),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e4),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d2f36),
      surfaceTint: Color(0xff8f4a50),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa95f66),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff583b3d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8e6c6e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff583e17),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8f6f43),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      onSurfaceVariant: Color(0xff4e3f40),
      outline: Color(0xff6c5b5c),
      outlineVariant: Color(0xff887677),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffb2b7),
      primaryFixed: Color(0xffa95f66),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8c474e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8e6c6e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745456),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8f6f43),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff74572e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e4),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff440e17),
      surfaceTint: Color(0xff8f4a50),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6d2f36),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff341b1d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff583b3d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff321e00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff583e17),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d2121),
      outline: Color(0xff4e3f40),
      outlineVariant: Color(0xff4e3f40),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inversePrimary: Color(0xffffe6e7),
      primaryFixed: Color(0xff6d2f36),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff511921),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff583b3d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3f2628),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff583e17),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3f2803),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e4),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb2b7),
      surfaceTint: Color(0xffffb2b7),
      onPrimary: Color(0xff561d24),
      primaryContainer: Color(0xff72333a),
      onPrimaryContainer: Color(0xffffdadb),
      secondary: Color(0xffe6bdbe),
      onSecondary: Color(0xff44292b),
      secondaryContainer: Color(0xff5c3f41),
      onSecondaryContainer: Color(0xffffdadb),
      tertiary: Color(0xffe7c08e),
      onTertiary: Color(0xff432c06),
      tertiaryContainer: Color(0xff5d421b),
      onTertiaryContainer: Color(0xffffddb4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfff0dede),
      onSurfaceVariant: Color(0xffd7c1c2),
      outline: Color(0xff9f8c8d),
      outlineVariant: Color(0xff524344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inversePrimary: Color(0xff8f4a50),
      primaryFixed: Color(0xffffdadb),
      onPrimaryFixed: Color(0xff3b0811),
      primaryFixedDim: Color(0xffffb2b7),
      onPrimaryFixedVariant: Color(0xff72333a),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff2c1517),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff5c3f41),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff291800),
      tertiaryFixedDim: Color(0xffe7c08e),
      onTertiaryFixedVariant: Color(0xff5d421b),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb9bd),
      surfaceTint: Color(0xffffb2b7),
      onPrimary: Color(0xff34030c),
      primaryContainer: Color(0xffca7a81),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeac1c3),
      onSecondary: Color(0xff261012),
      secondaryContainer: Color(0xffac8889),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffecc492),
      onTertiary: Color(0xff221300),
      tertiaryContainer: Color(0xffae8b5d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfffff9f9),
      onSurfaceVariant: Color(0xffdbc6c6),
      outline: Color(0xffb29e9f),
      outlineVariant: Color(0xff917f7f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inversePrimary: Color(0xff74343b),
      primaryFixed: Color(0xffffdadb),
      onPrimaryFixed: Color(0xff2c0007),
      primaryFixedDim: Color(0xffffb2b7),
      onPrimaryFixedVariant: Color(0xff5e232a),
      secondaryFixed: Color(0xffffdadb),
      onSecondaryFixed: Color(0xff200b0d),
      secondaryFixedDim: Color(0xffe6bdbe),
      onSecondaryFixedVariant: Color(0xff4a2f31),
      tertiaryFixed: Color(0xffffddb4),
      onTertiaryFixed: Color(0xff1b0e00),
      tertiaryFixedDim: Color(0xffe7c08e),
      onTertiaryFixedVariant: Color(0xff4a310b),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb2b7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb9bd),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffeac1c3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffecc492),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1112),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdbc6c6),
      outlineVariant: Color(0xffdbc6c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inversePrimary: Color(0xff4e161e),
      primaryFixed: Color(0xffffdfe0),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb9bd),
      onPrimaryFixedVariant: Color(0xff34030c),
      secondaryFixed: Color(0xffffdfe0),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffeac1c3),
      onSecondaryFixedVariant: Color(0xff261012),
      tertiaryFixed: Color(0xffffe2c1),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffecc492),
      onTertiaryFixedVariant: Color(0xff221300),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
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
