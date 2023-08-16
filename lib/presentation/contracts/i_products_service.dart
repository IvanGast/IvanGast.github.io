import 'package:myapp/data/sources/remote/products_api/model/product.dart';

abstract class IProductsService {
  Future<List<Product>> getAllProducts();

  Future<Product> getProductById(int id);
}
