import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/domain/shared/locator.dart';
import 'package:myapp/presentation/contracts/i_products_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(const ProductsState());

  final _productsService = locator<IProductsService>();

  void loadProducts() async {
    _emit(loading: true);
    try {
      final products = await _productsService.getAllProducts();
      _emit(products: products);
    } catch (ex, st) {
      logDebug('We have error in ProductsCubit');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  void _emit({List<Product>? products, bool loading = false}) {
    emit(
      ProductsState(
        products: products ?? state.products,
        loading: loading,
      ),
    );
  }
}
