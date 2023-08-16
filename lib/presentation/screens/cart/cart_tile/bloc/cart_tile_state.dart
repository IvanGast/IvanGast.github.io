part of 'cart_tile_cubit.dart';

class CartTileState extends Equatable {
  const CartTileState({
    this.isHovered = false,
  });

  final bool isHovered;

  @override
  List<Object> get props => [
        isHovered,
      ];
}
