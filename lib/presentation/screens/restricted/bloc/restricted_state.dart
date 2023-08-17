part of 'restricted_cubit.dart';

class RestrictedState extends Equatable {
  const RestrictedState({
    this.currentIndex = 0,
    this.isCheckboxChecked = false,
  });

  final int currentIndex;
  final bool isCheckboxChecked;

  @override
  List<Object> get props => [
        currentIndex,
        isCheckboxChecked,
      ];
}
