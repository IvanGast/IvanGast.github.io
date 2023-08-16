import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

import '../custom_text/custom_text.dart';
import 'bloc/custom_button_cubit.dart';
import '../../components/custom_button/factories/button_enum.dart';
import 'layouts/custom_button_layout.dart';
import '../../components/custom_button/layouts/custom_icon_button_layout.dart';
import 'mixins/custom_button_mixin.dart';

part '../../components/custom_button/factories/custom_button_menu.dart';

part '../../components/custom_button/factories/custom_button_caption_underline.dart';

part '../../components/custom_button/factories/custom_button_checkbox.dart';

part '../../components/custom_button/factories/custom_button_icon_no_border.dart';

part '../../components/custom_button/factories/custom_button_primary_small.dart';

part '../../components/custom_button/factories/custom_button_secondary.dart';

part '../../components/custom_button/factories/custom_button_text_link.dart';

abstract class CustomButton extends StatelessWidget with CustomButtonMixin {
  const CustomButton({
    Key? key,
    this.text,
    this.height = 50,
    this.onPressed,
    this.icon,
    this.useFullContentWidth = false,
    this.isSelected = false,
    this.buttonModality,
    this.padding = 16,
    this.contentWidth,
  }) : super(key: key);

  factory CustomButton.primarySmall({
    Key? key,
    required String text,
    required ButtonModality buttonModality,
    VoidCallback? onPressed,
    double height,
    bool useFullContentWidth,
    bool isSelected,
    double padding,
  }) = CustomButtonPrimarySmall;

  factory CustomButton.secondary({
    Key? key,
    required String text,
    required ButtonModality buttonModality,
    IconData? prefixIcon,
    VoidCallback? onPressed,
    double? height,
    bool useFullContentWidth,
  }) = CustomButtonSecondary;

  factory CustomButton.menu({
    required String text,
    required bool isSelected,
    required VoidCallback onPressed,
  }) = CustomButtonMenu;

  factory CustomButton.textLink({
    Key? key,
    required String text,
    VoidCallback? onPressed,
    double? height,
  }) = CustomButtonTextLink;

  factory CustomButton.captionUnderline({
    Key? key,
    required String text,
    VoidCallback? onPressed,
    double? height,
  }) = CustomButtonCaptionUnderline;

  factory CustomButton.checkbox({
    Key? key,
    required VoidCallback onPressed,
    required bool isSelected,
  }) = CustomButtonCheckbox;

  factory CustomButton.iconNoBorder({
    Key? key,
    required IconData icon,
    required ButtonModality buttonModality,
    VoidCallback? onPressed,
    double height,
    double? contentWidth,
  }) = CustomButtonIconNoBorder;

  final String? text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final double? height;
  final ButtonModality? buttonModality;
  final bool isSelected;
  final bool useFullContentWidth;
  final double padding;
  final double? contentWidth;
}
