import 'package:flutter/material.dart';
import 'colors.dart';

/// Collection of corporate and extension gradients
/// derived from the given HEX values in the Styleguide.
abstract class CustomGradients {
  static LinearGradient yellowGradient = LinearGradient(
    colors: [
      Colors.transparent,
      Colors.yellow.withOpacity(0.3),
      Colors.yellow,
    ],
    stops: const [0, 0.3, 0.5],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  static LinearGradient yellowGradientReversed = LinearGradient(
    colors: [
      Colors.transparent,
      Colors.yellow.withOpacity(0.3),
      Colors.yellow,
    ],
    stops: const [0, 0.3, 0.5],
    end: Alignment.bottomLeft,
    begin: Alignment.topRight,
  );

  static LinearGradient blackBackgroundGradient = LinearGradient(
    colors: [
      Colors.black.withOpacity(0.6),
      Colors.transparent,
    ],
    stops: const [0, 1],
    end: Alignment.bottomCenter,
    begin: Alignment.topCenter,
  );

  static LinearGradient blackGradient = const LinearGradient(
    colors: [
      CustomColors.lightBlack,
      Colors.transparent,
    ],
    stops: [0, 1],
    end: Alignment.topCenter,
    begin: Alignment.bottomCenter,
  );
}