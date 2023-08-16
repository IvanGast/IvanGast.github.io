import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:flutter/material.dart';

/// Class defining the text themes used throughout the project.
abstract class TextThemeMobile {
  /// Main [TextTheme] used for the project.
  static TextTheme get textTheme => const TextTheme(
        displayMedium: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 43,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1,
          letterSpacing: 43 * 0.01,
          color: CustomColors.white,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1,
          letterSpacing: 34 * 0.01,
          color: CustomColors.white,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 27,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.1,
          letterSpacing: 27 * 0.01,
          color: CustomColors.white,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.2,
          letterSpacing: 18 * 0.01,
          color: CustomColors.white,
        ),
        titleLarge: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 13,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.1,
          letterSpacing: 13 * 0.01,
          color: CustomColors.white,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.3,
          letterSpacing: 14 * 0.05,
          color: CustomColors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.5,
          letterSpacing: 14 * 0.005,
          color: CustomColors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.4,
          letterSpacing: 18 * 0.005,
          color: CustomColors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.3,
          letterSpacing: 11 * 0.01,
          color: CustomColors.white,
        ),
      );
}
