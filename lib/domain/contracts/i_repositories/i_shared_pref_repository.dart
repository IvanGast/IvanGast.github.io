import 'package:myapp/utils/locale/country_code.dart';
import 'package:myapp/utils/locale/language_code.dart';

abstract class ISharedPref {
  Future<void> clearStorage();

  set regionCurrency(Currency regionCurrency);

  Currency get regionCurrency;

  set language(LanguageCode lang);

  LanguageCode get language;

  set country(CountryCode country);

  CountryCode get country;

  set isRestrictionPassed(bool isRestrictionPassed);

  bool get isRestrictionPassed;
}
enum Currency {
  aud,
  eur,
  usd,
}