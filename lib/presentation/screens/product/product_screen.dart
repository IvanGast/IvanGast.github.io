import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/product/bloc/product_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/components/image/custom_image.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';
import 'package:myapp/presentation/shared/utils/string_utils.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  static const String route = '/product';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductCubit>(
      create: (ctx) => ProductCubit()..check(ModalRoute.of(context)!.settings),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.product != null) {
          return _ProductScreenContent(product: state.product!);
        }
        return _ProductNotFound();
      },
    );
  }
}

class _ProductScreenContent extends StatelessWidget {
  const _ProductScreenContent({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: CustomSpaces.space2x,
          ),
          CustomText.bodyLExtra(
            '${S.of(context).product} #${product.id}',
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: CustomSpaces.space,
          ),
          CustomText.h5(
            product.title,
            color: CustomColors.white,
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: CustomSpaces.space,
          ),
          CustomImage(
            imageUrl: product.image,
            width: _imageSize,
            height: _imageSize,
            backgroundColor: CustomColors.transparent,
          ),
          const SizedBox(
            height: CustomSpaces.space,
          ),
          SizedBox(
            width: ScreenUtil().screenWidth - _horizontalPadding * 2,
            child: CustomText.bodyL(
              product.description,
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: CustomSpaces.space,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               CustomText.bodyL(S.of(context).category),
              CustomText.h5(
                StringUtils.formatCategory(product.category),
                color: CustomColors.white,
              ),
            ],
          ),
          const SizedBox(
            height: CustomSpaces.space,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText.bodyL(S.of(context).price),
              CustomText.bodyL(
                '${product.price.toStringAsFixed(2)} \$',
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }

  double get _horizontalPadding => Breakpoints.isMobile
      ? CustomSpaces.space
      : ScreenUtil().screenWidth * 0.2;

  double get _imageSize => Breakpoints.isMobile ? 200 : 300;
}

class _ProductNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText.h3(
        S.of(context).product_not_found,
      ),
    );
  }
}
