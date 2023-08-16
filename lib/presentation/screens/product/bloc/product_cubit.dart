import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/data/shared/locator.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/presentation/contracts/i_products_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductState());

  final IProductsService _productsService = locator<IProductsService>();

  void check(RouteSettings settings) async {
    emit(
      const ProductState(
        loading: true,
      ),
    );
    try {
      if (settings.arguments == null) {
        final route = settings.name ?? '/1';
        final index = route.lastIndexOf('/') + 1;
        final id = int.parse(route.substring(index));
        final product = await _productsService.getProductById(id);
        emit(ProductState(product: product));
      } else {
        final product = settings.arguments as Product;
        emit(ProductState(product: product));
      }
    } catch (ex, st) {
      logDebug('We have error in RootCubit');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
      emit(const ProductState());
    }
  }
}
