import 'package:flutter/material.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/shared/strings.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({
    super.key,
    this.imagePath = Strings.backgroundPath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: _height,
          fit: BoxFit.cover,
        ),
        Container(
          height: _height,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  CustomColors.black.withOpacity(0.01),
                  CustomColors.black.withOpacity(0.3),
                  CustomColors.black.withOpacity(0.9),
                ],
                stops: const [
                  0.0,
                  0.9,
                  1.0,
                ]),
          ),
        ),
        Positioned(
          top: CustomSpaces.space7x,
          left: _leftPosition,
          child: Text(
            S.of(context).welcome_background_title,
            style: TextStyle(
              fontFamily: 'Tomorrow',
              fontSize: _fontSize,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }

  double get _height => Breakpoints.isMobile ? 200 : 300;

  double get _fontSize => Breakpoints.isMobile ? 28 : 46;

  double get _leftPosition =>
      Breakpoints.isMobile ? CustomSpaces.space2x : CustomSpaces.space6x;
}
