import 'package:myapp/data/shared/locator.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';
import 'package:myapp/domain/contracts/i_clients/i_product_api_client.dart';
import 'package:myapp/presentation/contracts/i_products_service.dart';

class ProductsService implements IProductsService {

  final IProductApiClient _productApiClient = locator();

  @override
  Future<List<Product>> getAllProducts() {
    return _productApiClient.getAllProducts();
  }

  @override
  Future<Product> getProductById(int id) {
    return _productApiClient.getProductById(id);
  }
}