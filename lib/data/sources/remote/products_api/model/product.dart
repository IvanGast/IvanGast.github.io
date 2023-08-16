import 'package:equatable/equatable.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';

class Product extends Equatable {
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        price = json['price'],
        description = json['description'],
        category = json['category'],
        image = json['image'];

  Product.fromCartProduct(CartProduct product)
      : id = product.id,
        title = product.title,
        price = product.price,
        description = product.description,
        category = product.category,
        image = product.image;

  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  @override
  List<Object?> get props => [
        id,
        title,
        price,
        description,
        category,
        image,
      ];
}
