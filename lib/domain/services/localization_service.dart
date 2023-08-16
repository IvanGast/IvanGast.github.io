import 'package:myapp/domain/contracts/i_repositories/i_shared_pref_repository.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/contracts/i_localization_service.dart';
import 'package:myapp/utils/locale/country_code.dart';
import 'package:myapp/utils/locale/language_code.dart';
import 'package:myapp/utils/locale/supported_locales.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

class LocalizationService implements ILocalizationService {
  LocalizationService({
    required this.sharedPref,
  });

  ISharedPref sharedPref;

  @override
  void init() {
    regionCurrency;
    S.load(locale);
  }

  @override
  Currency get regionCurrency {
    return sharedPref.regionCurrency;
  }

  @override
  set regionCurrency(Currency regionCurrency) {
    sharedPref.regionCurrency = regionCurrency;
  }

  @override
  Locale get locale {
    return Locale(
      describeEnum(_language),
      describeEnum(_country),
    );
  }

  @override
  set locale(Locale locale) {
    if (supportedLocales.contains(locale)) {
      _language = LanguageCode.values.byName(locale.languageCode);
      _country = CountryCode.values.byName(locale.countryCode!);
      S.load(locale);
    } else {
      logDebug(
          'Unsupported Locale, reverting to default de_DE Locale with europe as shipping region');
      _language = LanguageCode.de;
      _country = CountryCode.DE;
      regionCurrency = Currency.eur;
      S.load(
        const Locale('de', 'DE'),
      );
    }
  }

  set _country(CountryCode country) {
    sharedPref.country = country;
  }

  CountryCode get _country {
    return sharedPref.country;
  }

  LanguageCode get _language {
    return sharedPref.language;
  }

  set _language(LanguageCode lang) {
    sharedPref.language = lang;
  }
}
