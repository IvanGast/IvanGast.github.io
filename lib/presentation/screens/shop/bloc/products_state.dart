part of 'products_cubit.dart';

class ProductsState extends Equatable {
  const ProductsState({
    this.products = const [],
    this.loading = false,
  });

  final List<Product> products;
  final bool loading;

  @override
  List<Object?> get props => [
        products,
        loading,
      ];
}
