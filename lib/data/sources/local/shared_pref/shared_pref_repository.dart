import 'package:myapp/domain/contracts/i_repositories/i_shared_pref_repository.dart';
import 'package:myapp/utils/locale/country_code.dart';
import 'package:myapp/utils/locale/language_code.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefRepository implements ISharedPref {
  static SharedPrefRepository? _instance;
  static SharedPreferences? _preferences;

  /// Keys we store
  static const String isRestrictionPassedKey = 'isRestrictionPassed';
  static const String regionCurrencyKey = 'regionCurrency';
  static const String languageKey = 'language';
  static const String countryKey = 'country';

  static Future<SharedPrefRepository> getInstance() async {
    _instance ??= SharedPrefRepository();
    _preferences ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  dynamic _getFromDisk(String key) {
    final value = _preferences!.get(key);
    return value;
  }

  /// updated _saveToDisk function that handles all types
  void _saveToDisk<T>(String key, T content) {
    if (content is String) {
      _preferences!.setString(key, content);
    }
    if (content is bool) {
      _preferences!.setBool(key, content);
    }
    if (content is int) {
      _preferences!.setInt(key, content);
    }
    if (content is double) {
      _preferences!.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences!.setStringList(key, content);
    }
  }

  @override
  Future<void> clearStorage() async {
    await _preferences!.clear();
  }

  @override
  set regionCurrency(Currency regionCurrency) {
    _saveToDisk(regionCurrencyKey, describeEnum(regionCurrency));
  }

  @override
  Currency get regionCurrency {
    final savedCurrency = _getFromDisk(regionCurrencyKey);
    if (savedCurrency == null) {
      regionCurrency = Currency.eur;
      return Currency.eur;
    }
    return Currency.values.byName(savedCurrency);
  }

  @override
  set language(LanguageCode lang) {
    _saveToDisk(languageKey, describeEnum(lang));
  }

  @override
  LanguageCode get language {
    final lang = _getFromDisk(languageKey);
    if (lang == null) {
      language = LanguageCode.de;
      return LanguageCode.de;
    }
    return LanguageCode.values.byName(lang);
  }

  @override
  set country(CountryCode country) {
    _saveToDisk(countryKey, describeEnum(country));
  }

  @override
  CountryCode get country {
    final savedCountry = _getFromDisk(countryKey);
    if (savedCountry == null) {
      country = CountryCode.DE;
      return CountryCode.DE;
    }
    return CountryCode.values.byName(savedCountry);
  }

  @override
  set isRestrictionPassed(bool isRestrictionPassed) {
    _saveToDisk(isRestrictionPassedKey, isRestrictionPassed);
  }

  @override
  bool get isRestrictionPassed {
    final savedIsRestrictionPassed = _getFromDisk(isRestrictionPassedKey);
    if (savedIsRestrictionPassed == null) {
      isRestrictionPassed = false;
      return false;
    }
    return savedIsRestrictionPassed;
  }
}
