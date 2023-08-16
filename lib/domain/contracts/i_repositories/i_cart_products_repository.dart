import 'package:myapp/data/sources/local/model/cart_product.dart';

abstract class ICartProductsRepository {
  Future<void> saveProducts(
    List<CartProduct> products,
  );

  Future<void> clearProducts();

  Future<List<CartProduct>> getProducts();
}
