import 'package:flutter/material.dart';

TextTheme createTextTheme(
    BuildContext context) {
 // TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = Theme.of(context).textTheme;
  TextTheme displayTextTheme = Theme.of(context).textTheme;
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
