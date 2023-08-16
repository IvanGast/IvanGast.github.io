import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:myapp/data/sources/remote/products_api/model/product.dart';

part 'cart_product.g.dart';

@HiveType(typeId: 0)
class CartProduct extends HiveObject with EquatableMixin {
  CartProduct.fromProduct(Product product)
      : id = product.id,
        title = product.title,
        price = product.price,
        description = product.description,
        category = product.category,
        image = product.image,
        quantity = 1;

  CartProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.quantity,
  });

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final double price;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String category;

  @HiveField(5)
  final String image;

  @HiveField(6)
  final int quantity;

  CartProduct incrementQuantity() => CartProduct(
        id: id,
        title: title,
        price: price,
        description: description,
        category: category,
        image: image,
        quantity: quantity + 1,
      );

  CartProduct decrementQuantity() => CartProduct(
    id: id,
    title: title,
    price: price,
    description: description,
    category: category,
    image: image,
    quantity: quantity - 1,
  );

  @override
  List<Object?> get props => [
        id,
        title,
        price,
        description,
        category,
        image,
        quantity,
      ];
}
