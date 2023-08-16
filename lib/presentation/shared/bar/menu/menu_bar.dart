import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/presentation/layout/responsive_layout.dart';
import 'package:myapp/presentation/screens/root/bloc/root_cubit.dart';
import 'package:myapp/presentation/shared/bar/menu/desktop_menu_bar.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileContent: _MobileMenuButton(),
      desktopContent: const DesktopMenuBar(),
    );
  }
}

class _MobileMenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: CustomSpaces.space,
        horizontal: CustomSpaces.space,
      ),
      child: Row(
        children: [
          const Spacer(),
          Container(
            color: CustomColors.black,
            child: CustomButton.iconNoBorder(
              icon: Icons.menu,
              buttonModality: ButtonModality.darkBackground,
              onPressed: BlocProvider.of<RootCubit>(context).openMenu,
            ),
          ),
        ],
      ),
    );
  }
}
