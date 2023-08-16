import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';

import '../../../../shared/locator.dart';

part 'cart_tile_state.dart';

class CartTileCubit extends Cubit<CartTileState> {
  CartTileCubit() : super(const CartTileState());

  final _rootNavigationService = locator<RootNavigationService>();


  void onHoverEnter(PointerEnterEvent event) {
    emit(
      const CartTileState(
        isHovered: true,
      ),
    );
  }

  void onHoverExit(PointerExitEvent event) {
    emit(
      const CartTileState(),
    );
  }

  void openProduct(CartProduct cartProduct) {
    _rootNavigationService.navigateTo(
      '/product/${cartProduct.id}',
      arguments: Product.fromCartProduct(cartProduct),
    );
  }
}
