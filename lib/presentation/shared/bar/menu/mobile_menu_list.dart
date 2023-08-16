import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/root/bloc/root_cubit.dart';
import 'package:myapp/presentation/shared/bar/menu/bloc/menu_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class MobileMenuList extends StatelessWidget {
  const MobileMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCubit>(
      create: (context) => MenuCubit(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) => Container(
          color: Colors.black,
          height: ScreenUtil().screenHeight,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: CustomSpaces.space2x,
                    left: CustomSpaces.space,
                    right: CustomSpaces.space,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText.h4(S.of(context).menu_title),
                      _CloseButton(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: CustomSpaces.space2x,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.white,
                  ),
                ),
                _ShopButton(
                  isSelected: state.isShopButtonSelected,
                ),
                const SizedBox(
                  height: CustomSpaces.space,
                ),
                _InfoButton(
                  isSelected: state.isInfoButtonSelected,
                ),
                const SizedBox(
                  height: CustomSpaces.space,
                ),
                _ContactsButton(
                  isSelected: state.isContactsButtonSelected,
                ),
                const SizedBox(
                  height: CustomSpaces.space,
                ),
                _CartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton.iconNoBorder(
      icon: Icons.close,
      buttonModality: ButtonModality.darkBackground,
      onPressed: BlocProvider.of<RootCubit>(context).goBack,
    );
  }
}

class _ShopButton extends StatelessWidget {
  const _ShopButton({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
      text: S.of(context).menu_shop.toUpperCase(),
      buttonModality: ButtonModality.lightBackground,
      onPressed: BlocProvider.of<MenuCubit>(context).openShop,
      isSelected: isSelected,
    );
  }
}

class _ContactsButton extends StatelessWidget {
  const _ContactsButton({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
      text: S.of(context).menu_contact.toUpperCase(),
      buttonModality: ButtonModality.lightBackground,
      onPressed: BlocProvider.of<MenuCubit>(context).openContacts,
      isSelected: isSelected,
    );
  }
}

class _InfoButton extends StatelessWidget {
  const _InfoButton({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
      text: S.of(context).menu_info.toUpperCase(),
      buttonModality: ButtonModality.lightBackground,
      onPressed: BlocProvider.of<MenuCubit>(context).openInfo,
      isSelected: isSelected,
    );
  }
}

class _CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
      text: S.of(context).menu_cart.toUpperCase(),
      buttonModality: ButtonModality.lightBackground,
      onPressed: BlocProvider.of<MenuCubit>(context).openCart,
    );
  }
}
