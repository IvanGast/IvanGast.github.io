import 'package:flutter/material.dart';

abstract class CustomColors {
  static const transparent = Color(0x00000000);

  /// background, font
  static const white = Color(0xFFFFFFFF);

  /// background
  static const lightestGrey = Color(0xFFF6F6F6);

  /// background
  static const lightGrey = Color(0xFFE9E9E9);

  /// background
  static const darkGrey = Color(0xFFAEAEAE);

  /// background, font
  static const lightBlack = Color(0xFF303030);

  /// background, font
  static const black = Color(0xFF1F1F1F);

  /// accent
  static const yellow = Color(0xFFF4F84A);

  /// sale
  static const red = Color(0xFFF34E3B);

  /// success
  static const green = Color(0xFF2DCF71);

  /// signal
  static const orange = Color(0xFFFF7500);

  /// transparentBlack
  static const blackTransparent = Color.fromRGBO(0, 0, 0, 0.6);

  static const backgroundColor = Color(0xFFE5E5E5);
  static const dialogBackgroundColor = Color(0xFF1F1F1F);

  static const greenMaterial = MaterialColor(0xFF2DCF71, _greenMaterial);
  static const Map<int, Color> _greenMaterial = {
    50: Color.fromRGBO(45, 207, 113, .1),
    100: Color.fromRGBO(45, 207, 113, .2),
    200: Color.fromRGBO(45, 207, 113, .3),
    300: Color.fromRGBO(45, 207, 113, .4),
    400: Color.fromRGBO(45, 207, 113, .5),
    500: Color.fromRGBO(45, 207, 113, .6),
    600: Color.fromRGBO(45, 207, 113, .7),
    700: Color.fromRGBO(45, 207, 113, .8),
    800: Color.fromRGBO(45, 207, 113, .9),
    900: Color.fromRGBO(45, 207, 113, 1),
  };
}