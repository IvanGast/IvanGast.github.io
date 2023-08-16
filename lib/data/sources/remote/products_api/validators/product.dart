import 'package:myapp/data/exceptions/validation_error.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';

extension ProductValidator on Product {
  List<ValidationError<Product>> validate() {
    /// TODO: Add backend response validators
    return [];
  }
}
