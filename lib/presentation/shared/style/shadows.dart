import 'package:flutter/material.dart';

abstract class CustomShadows {
  static const shadowMobile = BoxShadow(
    color: Color.fromRGBO(255, 233, 0, 0.3),
    blurRadius: 30,
  );

  static const shadowDesktop = BoxShadow(
    color: Color.fromRGBO(255, 233, 0, 0.4),
    blurRadius: 40,
  );

  static const footerShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.6),
    blurRadius: 50,
    blurStyle: BlurStyle.outer,
  );
}