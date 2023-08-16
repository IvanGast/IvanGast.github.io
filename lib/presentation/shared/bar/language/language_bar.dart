import 'package:flutter/material.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/shared/bar/language/language_button.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class LanguageBar extends StatelessWidget {
  const LanguageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: _verticalPadding,
        horizontal: _horizontalPadding,
      ),
      color: CustomColors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).language_bar,
            style: TextStyle(
              fontFamily: 'Tomorrow',
              fontSize: _fontSize,
            ),
          ),
          const Spacer(),
          const LanguageButton(),
        ],
      ),
    );
  }

  double get _horizontalPadding =>
      Breakpoints.isMobile ? CustomSpaces.space : CustomSpaces.space5x;

  double get _verticalPadding =>
      Breakpoints.isMobile ? CustomSpaces.halfSpace : CustomSpaces.space;

  double get _fontSize => Breakpoints.isMobile ? 18 : 26;
}
