import 'package:myapp/data/sources/local/model/cart_product.dart';
import 'package:myapp/domain/contracts/i_repositories/i_cart_products_repository.dart';
import 'package:myapp/presentation/contracts/i_cart_products_service.dart';

class CartProductsService extends ICartProductsService {
  CartProductsService({required this.cartProductsRepo});

  final ICartProductsRepository cartProductsRepo;

  @override
  Future<void> clearProducts() => cartProductsRepo.clearProducts();

  @override
  Future<List<CartProduct>> getProducts() => cartProductsRepo.getProducts();

  @override
  Future<void> saveProducts(List<CartProduct> products) =>
      cartProductsRepo.saveProducts(products);
}
