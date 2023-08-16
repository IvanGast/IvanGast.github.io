part of 'product_cubit.dart';

class ProductState extends Equatable {
  const ProductState({
    this.product,
    this.loading = false,
  });

  final Product? product;
  final bool loading;

  @override
  List<Object> get props => [
        product ?? '',
        loading,
      ];
}
