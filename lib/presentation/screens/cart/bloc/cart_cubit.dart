import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/data/shared/locator.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/presentation/contracts/i_cart_products_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  final _cartProductsService = locator<ICartProductsService>();

  void load() async {
    logDebug('Loading cart...');
    try {
      final products = await _cartProductsService.getProducts();
      emit(CartState(products: products));
    } catch (ex, st) {
      logDebug('We have error in CartCubit load');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  void addProduct(Product product) =>
      addCartProduct(CartProduct.fromProduct(product));

  void addCartProduct(CartProduct product) async {
    try {
      int index = _findIndexOfProduct(product);
      List<CartProduct> products = [...state.products];
      if (index != -1) {
        products[index] = products[index].incrementQuantity();
      } else {
        products = [...products, product];
      }
      await _cartProductsService.saveProducts(products);
      emit(CartState(products: products));
    } catch (ex, st) {
      logDebug('We have error in CartCubit addCartProduct');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  void removeCartProduct(CartProduct product) async {
    try {
      List<CartProduct> products = [...state.products];
      if (product.quantity != 1) {
        final index = _findIndexOfProduct(product);
        products[index] = products[index].decrementQuantity();
      } else {
        products.remove(product);
      }
      await _cartProductsService.saveProducts(products);
      emit(CartState(products: products));
    } catch (ex, st) {
      logDebug('We have error in CartCubit removeCartProduct');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  void clearCart() async {
    try {
      await _cartProductsService.saveProducts([]);
      emit(const CartState());
    } catch (ex, st) {
      logDebug('We have error in CartCubit clearCart');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  void checkout() {
    /// TODO: Implement checkout products
  }

  int _findIndexOfProduct(CartProduct product) {
    int index = 0;
    for (final p  in state.products) {
      if (p.id == product.id) {
        return index;
      } else {
        index++;
      }
    }
    return -1;
  }
}
