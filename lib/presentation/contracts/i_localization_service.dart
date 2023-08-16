import 'package:flutter/material.dart';
import 'package:myapp/domain/contracts/i_repositories/i_shared_pref_repository.dart';

abstract class ILocalizationService {
  //loads saved locale
  void init();

  set locale(Locale locale);

  Locale get locale;

  Currency get regionCurrency;

  set regionCurrency(Currency regionCurrency);
}
