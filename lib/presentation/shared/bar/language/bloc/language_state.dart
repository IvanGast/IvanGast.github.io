part of 'language_cubit.dart';

class LanguageState extends Equatable {
  const LanguageState({
    this.selectedLanguageIndex = 0,
  });

  final int selectedLanguageIndex;

  @override
  List<Object> get props => [selectedLanguageIndex];
}
