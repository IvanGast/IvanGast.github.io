// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Shop`
  String get title {
    return Intl.message(
      'Shop',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Our shop can't be used by individuals, who are less than 21 years old.`
  String get restriction_question1 {
    return Intl.message(
      'Our shop can\'t be used by individuals, who are less than 21 years old.',
      name: 'restriction_question1',
      desc: '',
      args: [],
    );
  }

  /// `Our shop can't be used by individuals, who are pregnant.`
  String get restriction_question2 {
    return Intl.message(
      'Our shop can\'t be used by individuals, who are pregnant.',
      name: 'restriction_question2',
      desc: '',
      args: [],
    );
  }

  /// `Our shop can't be used by individuals, who are working as a nurse.`
  String get restriction_question3 {
    return Intl.message(
      'Our shop can\'t be used by individuals, who are working as a nurse.',
      name: 'restriction_question3',
      desc: '',
      args: [],
    );
  }

  /// `By clicking this checkbox you admit, that you are eligible to visit our website.`
  String get restriction_info {
    return Intl.message(
      'By clicking this checkbox you admit, that you are eligible to visit our website.',
      name: 'restriction_info',
      desc: '',
      args: [],
    );
  }

  /// `BACK`
  String get restriction_back {
    return Intl.message(
      'BACK',
      name: 'restriction_back',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get restriction_continue {
    return Intl.message(
      'CONTINUE',
      name: 'restriction_continue',
      desc: '',
      args: [],
    );
  }

  /// `FINISH`
  String get restriction_finish {
    return Intl.message(
      'FINISH',
      name: 'restriction_finish',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get menu_shop {
    return Intl.message(
      'Shop',
      name: 'menu_shop',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get menu_contact {
    return Intl.message(
      'Contact',
      name: 'menu_contact',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get menu_info {
    return Intl.message(
      'Info',
      name: 'menu_info',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get menu_cart {
    return Intl.message(
      'Cart',
      name: 'menu_cart',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to our shop!`
  String get welcome_background_title {
    return Intl.message(
      'Welcome to our shop!',
      name: 'welcome_background_title',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu_title {
    return Intl.message(
      'Menu',
      name: 'menu_title',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages_title {
    return Intl.message(
      'Languages',
      name: 'languages_title',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get product_tile_button {
    return Intl.message(
      'Add to cart',
      name: 'product_tile_button',
      desc: '',
      args: [],
    );
  }

  /// `404 Not Found`
  String get not_found_screen {
    return Intl.message(
      '404 Not Found',
      name: 'not_found_screen',
      desc: '',
      args: [],
    );
  }

  /// `Category:`
  String get category {
    return Intl.message(
      'Category:',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Price:`
  String get price {
    return Intl.message(
      'Price:',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Quantity:`
  String get quantity {
    return Intl.message(
      'Quantity:',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Total:`
  String get total {
    return Intl.message(
      'Total:',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Product doesn\'t exist`
  String get product_not_found {
    return Intl.message(
      'Product doesn\\\'t exist',
      name: 'product_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product {
    return Intl.message(
      'Product',
      name: 'product',
      desc: '',
      args: [],
    );
  }

  /// `ONLY ORGANIC PRODUCTS`
  String get language_bar {
    return Intl.message(
      'ONLY ORGANIC PRODUCTS',
      name: 'language_bar',
      desc: '',
      args: [],
    );
  }

  /// `Cart is empty`
  String get cart_empty {
    return Intl.message(
      'Cart is empty',
      name: 'cart_empty',
      desc: '',
      args: [],
    );
  }

  /// `CHECKOUT`
  String get cart_checkout {
    return Intl.message(
      'CHECKOUT',
      name: 'cart_checkout',
      desc: '',
      args: [],
    );
  }

  /// `If you are eligible to visit our website, please check the red cross.`
  String get restricted_dialog {
    return Intl.message(
      'If you are eligible to visit our website, please check the red cross.',
      name: 'restricted_dialog',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'GB'),
      Locale.fromSubtags(languageCode: 'de', countryCode: 'DE'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
