part of 'product_tile_cubit.dart';

class ProductTileState extends Equatable {
  const ProductTileState({
    this.isHovered = false,
  });

  final bool isHovered;

  @override
  List<Object> get props => [
        isHovered,
      ];
}
