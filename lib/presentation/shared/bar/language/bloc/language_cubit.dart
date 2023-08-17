import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/presentation/contracts/i_localization_service.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/services/navigation/modal/i_modal_service.dart';
import 'package:myapp/presentation/shared/bar/language/languages_list.dart';
import 'package:myapp/utils/locale/supported_locales.dart';

import '../../../locator.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState());

  final _modalService = locator<IModalService>();
  final _localizationService = locator<ILocalizationService>();
  final _rootNavigationService = locator<RootNavigationService>();

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
    final context = _rootNavigationService.getContext();
    MainPage.updateState(context, locale);
  }

  void selectEnglish() {
    selectLanguage(0);
    emit(
      const LanguageState(selectedLanguageIndex: 0),
    );
  }

  void selectGerman() {
    selectLanguage(1);
    emit(
      const LanguageState(selectedLanguageIndex: 1),
    );
  }

  int _getIndexByLocale(String languageCode) {
    switch (languageCode) {
      case "us":
        return 0;
      case "en":
        return 0;
      case "de":
        return 1;
      default:
        return 0;
    }
  }
}
