import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/cart/bloc/cart_cubit.dart';
import 'package:myapp/presentation/screens/cart/cart_tile/cart_tile.dart';
import 'package:myapp/presentation/screens/root/bloc/root_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Container(
          color: CustomColors.black,
          height: ScreenUtil().screenHeight,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: _verticalOffset,
                    left: CustomSpaces.space,
                    right: CustomSpaces.space,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText.h4(S.of(context).menu_cart),
                      CustomButton.iconNoBorder(
                        icon: Icons.close,
                        buttonModality: ButtonModality.darkBackground,
                        onPressed:
                            BlocProvider.of<RootCubit>(context).goBack,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: _verticalOffset,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: CustomColors.white,
                  ),
                ),
                if (state.products.isNotEmpty)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...state.products
                          .map(
                            (e) => CartTile(product: e),
                          )
                          .toList(),
                      _TotalPrice(
                        products: state.products,
                      ),
                      _CheckoutButton(),
                    ],
                  )
                else
                   Padding(
                    padding: const EdgeInsets.all(
                      CustomSpaces.space,
                    ),
                    child: CustomText.h5(
                      S.of(context).cart_empty,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  double get _verticalOffset =>
      Breakpoints.isMobile ? CustomSpaces.space : CustomSpaces.space2x;
}

class _TotalPrice extends StatelessWidget {
  const _TotalPrice({required this.products});

  final List<CartProduct> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        CustomSpaces.space,
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: _width,
        ),
        child: Row(
          children: [
            CustomText.h5(S.of(context).total),
            const Spacer(),
            CustomText.h5(_totalPrice),
          ],
        ),
      ),
    );
  }

  double get _width => Breakpoints.isMobile
      ? ScreenUtil().screenWidth
      : ScreenUtil().screenWidth * 0.35;

  String get _totalPrice {
    double total = 0;
    for (var e in products) {
      total += e.price * e.quantity;
    }
    return '${total.toStringAsFixed(2)}\$';
  }
}

class _CheckoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        CustomSpaces.space,
      ),
      child: Row(
        children: [
          const Spacer(),
          CustomButton.primarySmall(
            text: S.of(context).cart_checkout,
            buttonModality: ButtonModality.purchasing,
            onPressed: BlocProvider.of<CartCubit>(context).checkout,
          ),
        ],
      ),
    );
  }
}
