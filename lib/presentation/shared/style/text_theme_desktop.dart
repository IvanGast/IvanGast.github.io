import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:flutter/material.dart';

/// Class defining the text themes used throughout the project.
abstract class TextThemeDesktop {
  /// Main [TextTheme] used for the project.
  static TextTheme get textTheme => const TextTheme(
        displayMedium: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 120,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 0.9,
          letterSpacing: 120 * 0.01,
          color: CustomColors.white,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 76,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 0.9,
          letterSpacing: 76 * 0.01,
          color: CustomColors.white,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 39,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1,
          letterSpacing: 39 * 0.01,
          color: CustomColors.white,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.1,
          letterSpacing: 20 * 0.01,
          color: CustomColors.white,
        ),
        titleLarge: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.1,
          letterSpacing: 16 * 0.01,
          color: CustomColors.white,
        ),
    labelLarge: TextStyle(
          fontFamily: 'Tomorrow',
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 1.1,
          letterSpacing: 16 * 0.05,
          color: CustomColors.white,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.5,
          letterSpacing: 16 * 0.005,
          color: CustomColors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.3,
          letterSpacing: 25 * 0.005,
          color: CustomColors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          height: 1.3,
          letterSpacing: 13 * 0.01,
          color: CustomColors.white,
        ),
      );
}
