part of 'restricted_cubit.dart';

class RestrictedState extends Equatable {
  const RestrictedState({
    this.currentIndex = 0,
    this.isCheckboxChecked = false,
    this.questionText = '',
  });

  final int currentIndex;
  final bool isCheckboxChecked;
  final String questionText;

  @override
  List<Object> get props => [
        currentIndex,
        isCheckboxChecked,
        questionText,
      ];
}
