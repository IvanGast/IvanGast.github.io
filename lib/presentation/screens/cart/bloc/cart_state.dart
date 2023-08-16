part of 'cart_cubit.dart';

class CartState extends Equatable {
  const CartState({
    this.products = const [],
  });

  final List<CartProduct> products;

  @override
  List<Object> get props => [
        products,
      ];
}
