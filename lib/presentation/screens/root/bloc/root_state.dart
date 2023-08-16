part of 'root_cubit.dart';

class RootState extends Equatable {
  const RootState({
    this.isShopButtonSelected = false,
    this.isInfoButtonSelected = false,
    this.isContactsButtonSelected = false,
  });

  final bool isShopButtonSelected;
  final bool isInfoButtonSelected;
  final bool isContactsButtonSelected;

  @override
  List<Object> get props => [
        isShopButtonSelected,
        isInfoButtonSelected,
        isContactsButtonSelected,
      ];
}

class Accepted extends RootState {
  const Accepted({
    required bool isShopButtonSelected,
    required bool isInfoButtonSelected,
    required bool isContactsButtonSelected,
  }) : super(
          isShopButtonSelected: isShopButtonSelected,
          isInfoButtonSelected: isInfoButtonSelected,
          isContactsButtonSelected: isContactsButtonSelected,
        );
}
