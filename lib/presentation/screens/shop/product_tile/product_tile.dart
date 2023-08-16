import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/cart/bloc/cart_cubit.dart';
import 'package:myapp/presentation/screens/shop/shop_screen.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/components/image/custom_image.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';
import 'package:myapp/presentation/shared/utils/string_utils.dart';

import 'bloc/product_tile_cubit.dart';


double get cardHeight =>
    ((ScreenUtil().screenWidth -
        horizontalPadding * 2 -
        spacing * (crossAxisCount - 1)) /
        crossAxisCount) -
        CustomSpaces.space2x;

class ProductTile extends StatelessWidget {
  ProductTile({
    super.key,
    required this.product,
  });

  final Product product;
  final _cubit = ProductTileCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductTileCubit, ProductTileState>(
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
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(
                  CustomSpaces.halfSpace,
                ),
                boxShadow: [
                  BoxShadow(
                    color: state.isHovered
                        ? CustomColors.white.withOpacity(0.5)
                        : CustomColors.transparent,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              padding: const EdgeInsets.all(
                CustomSpaces.space,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: CustomText.h5(
                      product.title,
                      color: CustomColors.black,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  CustomImage(
                    imageUrl: product.image,
                    width: double.maxFinite,
                    height: Breakpoints.isMobile
                        ? cardHeight - CustomSpaces.space14x - 5
                        : cardHeight - CustomSpaces.space16x - 4,
                    backgroundColor: CustomColors.transparent,
                  ),
                  CustomText.caption(
                    StringUtils.formatCategory(product.category),
                    color: CustomColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText.bodyL(
                    '${product.price.toStringAsFixed(2)} \$',
                    color: CustomColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  // if (Breakpoints.isMobile)
                  _CartButton(
                    product: product,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}

class _CartButton extends StatelessWidget {
  const _CartButton({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
        text: S.of(context).product_tile_button,
        buttonModality: ButtonModality.lightBackground,
        height: CustomSpaces.space3x,
        useFullContentWidth: true,
        onPressed: () {
          BlocProvider.of<CartCubit>(context).addProduct(product);
        },
    );
  }
}
