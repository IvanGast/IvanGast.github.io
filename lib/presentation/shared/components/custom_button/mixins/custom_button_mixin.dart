import 'package:flutter/material.dart';
import 'package:myapp/presentation/shared/components/painter/cross_painter.dart';
import 'package:myapp/presentation/shared/style/colors.dart';

import '../../../components/custom_button/factories/button_enum.dart';

mixin CustomButtonMixin {
  Color hoverColor({
    required bool isHovering,
    required ButtonModality buttonModality,
  }) {
    switch (buttonModality) {
      case ButtonModality.purchasing:
        return isHovering ? CustomColors.white : CustomColors.greenMaterial;
      case ButtonModality.lightBackground:
        return isHovering ? CustomColors.greenMaterial : CustomColors.black;
      case ButtonModality.darkBackground:
        return isHovering ? CustomColors.greenMaterial : CustomColors.white;
    }
  }

  Color textColor({
    required bool isHovering,
    required ButtonModality buttonModality,
  }) {
    switch (buttonModality) {
      case ButtonModality.purchasing:
      case ButtonModality.darkBackground:
        return CustomColors.black;
      case ButtonModality.lightBackground:
        return isHovering ? CustomColors.black : CustomColors.white;
    }
  }

  Color checkboxFillColor(bool isChecked) =>
      isChecked ? CustomColors.green : CustomColors.transparent;

  Color checkboxSplashColor(bool isChecked) =>
      isChecked ? CustomColors.red : CustomColors.green;

  Color checkboxBorderColor(bool isChecked) =>
      isChecked ? CustomColors.green : CustomColors.red;

  Color checkboxHoverColor(bool isChecked) =>
      isChecked ? CustomColors.green : CustomColors.transparent;

  Widget checkboxIcon(bool isChecked) => isChecked
      ? const Icon(
          Icons.check,
          color: CustomColors.black,
        )
      : CustomPaint(
          painter: CrossPainter(),
          child: Container(),
        );
}
