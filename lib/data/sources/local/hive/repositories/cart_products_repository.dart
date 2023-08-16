import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';
import 'package:myapp/domain/contracts/i_repositories/i_cart_products_repository.dart';

class CartProductsRepository implements ICartProductsRepository {
  CartProductsRepository({
    required this.productBox,
  });

  final Box<CartProduct> productBox;

  @override
  Future<void> clearProducts() async {
    await productBox.clear();
  }

  @override
  Future<List<CartProduct>> getProducts() async {
    final products = productBox.values.toList();

    return products;
  }

  @override
  Future<void> saveProducts(List<CartProduct> products) async {
    await productBox.clear();
    final Map<int, CartProduct> mapEntries = {
      for (final prod in products) prod.id: prod
    };
    return await productBox.putAll(mapEntries);
  }

}
