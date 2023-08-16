import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/cart/bloc/cart_cubit.dart';
import 'package:myapp/presentation/screens/cart/cart_tile/bloc/cart_tile_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/components/image/custom_image.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class CartTile extends StatelessWidget {
  CartTile({
    super.key,
    required this.product,
  });

  final CartProduct product;

  final _cubit = CartTileCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartTileCubit, CartTileState>(
      bloc: _cubit,
      builder: (context, state) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: _cubit.onHoverEnter,
          onExit: _cubit.onHoverExit,
          child: GestureDetector(
            onTap: () {
              _cubit.openProduct(product);
            },
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.black,
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  width: 2,
                  color: CustomColors.white,
                ),
                boxShadow: [
                  BoxShadow(
                    color: state.isHovered
                        ? CustomColors.white.withOpacity(0.5)
                        : CustomColors.transparent,
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: const EdgeInsets.all(
                CustomSpaces.space,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSpaces.space,
                vertical: CustomSpaces.space,
              ),
              child: Row(
                children: [
                  CustomImage(
                    imageUrl: product.image,
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: CustomSpaces.space,
                  ),
                  Container(
                    constraints: _constraints,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: CustomSpaces.space1_5x,
                          ),
                          child: CustomText.h5(
                            product.title,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _wrap(
                          CustomText.button(S.of(context).price),
                          CustomText.button(
                            '${product.price.toStringAsFixed(2)}\$',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        _wrap(
                          CustomText.button(S.of(context).quantity),
                          _CartTileCounter(
                            product: product,
                          ),
                        ),
                        Container(
                          constraints: _constraints,
                          margin: const EdgeInsets.only(
                            bottom: CustomSpaces.space1_5x,
                          ),
                          color: CustomColors.white.withOpacity(0.5),
                          height: 2,
                          width: double.infinity,
                        ),
                        _wrap(
                          CustomText.button(S.of(context).total),
                          CustomText.button(
                            '${(product.price * product.quantity).toStringAsFixed(2)}\$',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _wrap(Widget firstWidget, secondWidget) => Container(
        constraints: _constraints,
        child: Row(
          children: [
            firstWidget,
            const Spacer(),
            secondWidget,
          ],
        ),
      );

  BoxConstraints get _constraints => BoxConstraints(
        maxWidth:
            (Breakpoints.isMobile ? 1 : 0.35) * ScreenUtil().screenWidth - 94,
      );
}

class _CartTileCounter extends StatelessWidget {
  const _CartTileCounter({
    required this.product,
  });

  final CartProduct product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton.iconNoBorder(
          icon: Icons.remove,
          buttonModality: ButtonModality.darkBackground,
          onPressed: () {
            BlocProvider.of<CartCubit>(context).removeCartProduct(product);
          },
        ),
        CustomText.button(
          product.quantity.toString(),
        ),
        CustomButton.iconNoBorder(
          icon: Icons.add,
          buttonModality: ButtonModality.darkBackground,
          onPressed: () {
            BlocProvider.of<CartCubit>(context).addCartProduct(product);
          },
        ),
      ],
    );
  }
}
