import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/root/bloc/root_cubit.dart';
import 'package:myapp/presentation/shared/bar/menu/bloc/menu_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class DesktopMenuBar extends StatelessWidget {
  const DesktopMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCubit>(
      create: (context) => MenuCubit(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: CustomSpaces.space,
              horizontal: CustomSpaces.space16x,
            ),
            color: CustomColors.transparent,
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                _ShopButton(
                  isSelected: state.isShopButtonSelected,
                ),
                _verticalLine,
                _InfoButton(
                  isSelected: state.isInfoButtonSelected,
                ),
                _verticalLine,
                _ContactsButton(
                  isSelected: state.isContactsButtonSelected,
                ),
                _verticalLine,
                _CartButton(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget get _verticalLine => Container(
        color: CustomColors.green.withOpacity(0.5),
        width: 1,
        height: 50,
      );
}

class _ShopButton extends StatelessWidget {
  const _ShopButton({
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) => _constrainedButton(
        S.of(context).menu_shop,
        BlocProvider.of<MenuCubit>(context).openShop,
        isSelected,
      );
}

class _ContactsButton extends StatelessWidget {
  const _ContactsButton({
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) => _constrainedButton(
    S.of(context).menu_contact,
        BlocProvider.of<MenuCubit>(context).openContacts,
        isSelected,
      );
}

class _InfoButton extends StatelessWidget {
  const _InfoButton({
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) => _constrainedButton(
    S.of(context).menu_info,
        BlocProvider.of<MenuCubit>(context).openInfo,
        isSelected,
      );
}

class _CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _constrainedButton(
    S.of(context).menu_cart,
        BlocProvider.of<MenuCubit>(context).openCart,
        false,
      );
}

Widget _constrainedButton(
  String label,
  VoidCallback onPressed,
  bool isSelected,
) =>
    ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: CustomSpaces.space25x,
      ),
      child: CustomButton.menu(
        text: label,
        onPressed: onPressed,
        isSelected: isSelected,
      ),
    );
