import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/presentation/screens/restricted/restricted.dart';
import 'package:myapp/presentation/shared/background/welcome_background.dart';
import 'package:myapp/presentation/shared/bar/language/language_bar.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';
import 'package:myapp/presentation/shared/bar/menu/menu_bar.dart' as bar;

import 'bloc/root_cubit.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({
    Key? key,
    required this.child,
    required this.routeName,
  }) : super(key: key);

  final String routeName;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    const WelcomeBackground(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: _topPadding,
                        ),
                        const LanguageBar(),
                        if (state is Accepted) const bar.MenuBar(),
                        const SizedBox(
                          height: CustomSpaces.space,
                        ),
                        if (state is Accepted ||
                            routeName == RestrictedScreen.route)
                          child
                        else
                          _fallbackScreen,
                      ],
                    ),
                  ],
                ),
              ),
              if (Breakpoints.isMobile) _BackButton(),
            ],
          );
        },
      ),
    );
  }

  Widget get _fallbackScreen => const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );

  double get _topPadding =>
      Breakpoints.isMobile ? CustomSpaces.space14x : CustomSpaces.space18x;
}

class _BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        CustomSpaces.space,
      ),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100,
        ),
        color: CustomColors.black.withOpacity(0.3),
      ),
      child: CustomButton.iconNoBorder(
        icon: Icons.arrow_back,
        buttonModality: ButtonModality.darkBackground,
        onPressed: BlocProvider.of<RootCubit>(context).goBack,
        height: CustomSpaces.space4x,
        contentWidth: CustomSpaces.space4x,
      ),
    );
  }
}
