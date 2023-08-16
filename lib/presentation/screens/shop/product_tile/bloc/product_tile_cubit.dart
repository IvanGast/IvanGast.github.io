import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/shared/locator.dart';

part 'product_tile_state.dart';

class ProductTileCubit extends Cubit<ProductTileState> {
  ProductTileCubit() : super(const ProductTileState());

  final _rootNavigationService = locator<RootNavigationService>();

  void onHoverEnter(PointerEnterEvent event) {
    emit(
      const ProductTileState(
        isHovered: true,
      ),
    );
  }

  void onHoverExit(PointerExitEvent event) {
    emit(
      const ProductTileState(),
    );
  }

  void openProduct(Product product) {
    _rootNavigationService.navigateTo(
      '/product/${product.id}',
      arguments: product,
    );
  }
}
