import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils/locale/country_code.dart';
import 'package:myapp/utils/locale/language_code.dart';

final supportedLocales = [
  // Locale(describeEnum(LanguageCode.th), describeEnum(CountryCode.TH)),
  Locale(describeEnum(LanguageCode.en), describeEnum(CountryCode.GB)),
  Locale(describeEnum(LanguageCode.de), describeEnum(CountryCode.DE)),
];
