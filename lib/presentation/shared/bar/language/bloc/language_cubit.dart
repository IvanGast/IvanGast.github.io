import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myapp/presentation/contracts/i_localization_service.dart';
import 'package:myapp/presentation/services/navigation/modal/i_modal_service.dart';
import 'package:myapp/presentation/shared/bar/language/languages_list.dart';
import 'package:myapp/utils/locale/supported_locales.dart';

import '../../../locator.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState());

  final _modalService = locator<IModalService>();
  final _localizationService = locator<ILocalizationService>();

  void open() async {
    final selectedLocaleIndex =
        _getIndexByLocale(_localizationService.locale.languageCode);
    emit(
      LanguageState(selectedLanguageIndex: selectedLocaleIndex),
    );
    _modalService.showSlidePanel(
      panel: const LanguagesList(),
    );
  }

  void selectLanguage(int index) async {
    Locale locale = supportedLocales[index];
    _localizationService.locale = locale;
  }

  void selectThai() {
    selectLanguage(0);
    emit(
      const LanguageState(selectedLanguageIndex: 0),
    );
  }

  void selectEnglish() {
    selectLanguage(1);
    emit(
      const LanguageState(selectedLanguageIndex: 1),
    );
  }

  void selectGerman() {
    selectLanguage(2);
    emit(
      const LanguageState(selectedLanguageIndex: 2),
    );
  }

  int _getIndexByLocale(String languageCode) {
    switch (languageCode) {
      case "th":
        return 0;
      case "en":
        return 1;
      case "de":
        return 2;
      default:
        return 1;
    }
  }
}
