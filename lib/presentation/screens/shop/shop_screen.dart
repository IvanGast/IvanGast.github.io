import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/presentation/screens/shop/bloc/products_cubit.dart';
import 'package:myapp/presentation/screens/shop/product_tile/product_tile.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';
import 'package:shimmer/shimmer.dart';

int get crossAxisCount => Breakpoints.isMobile ? 2 : 4;

double get spacing =>
    Breakpoints.isMobile ? CustomSpaces.space1_5x : CustomSpaces.space3x;

double get horizontalPadding =>
    Breakpoints.isMobile ? CustomSpaces.space1_5x : CustomSpaces.space8x;

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit()..loadProducts(),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state.loading) {
            return _LoadingSkeleton();
          }
          return GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: spacing,
            crossAxisSpacing: spacing,
            childAspectRatio: 1,
            padding: EdgeInsets.symmetric(
              vertical: spacing,
              horizontal: horizontalPadding,
            ),
            children: state.products
                .map(
                  (e) => ProductTile(
                    product: e,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class _LoadingSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      childAspectRatio: 1,
      padding: EdgeInsets.symmetric(
        vertical: spacing,
        horizontal: horizontalPadding,
      ),
      children: List.generate(
        8,
        (index) => _LoadingSkeletonItem(),
      ),
    );
  }
}

class _LoadingSkeletonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Container(
        width: cardHeight + CustomSpaces.space2x,
        height: cardHeight + CustomSpaces.space2x,
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.circular(
            CustomSpaces.halfSpace,
          ),
        ),
      ),
    );
  }
}
