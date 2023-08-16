import 'package:flutter/material.dart';

class BaseNavigationService {
  BaseNavigationService({
    required this.baseNavigatorKey,
    required this.baseScaffoldMessengerKey,
  });

  final GlobalKey<NavigatorState> baseNavigatorKey;
  final GlobalKey<ScaffoldMessengerState> baseScaffoldMessengerKey;
  static String currentRoute = '';

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    currentRoute = routeName;
    return baseNavigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> navigateReplacementTo(String routeName, {dynamic arguments}) {
    return baseNavigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void popUntil(String routeName) {
    baseNavigatorKey.currentState!.popUntil(
      ModalRoute.withName(
        routeName,
      ),
    );
  }

  BuildContext getContext() {
    return baseNavigatorKey.currentContext!;
  }

  void showSnackBar({required String snackText}) {
    final SnackBar snackBar = SnackBar(
      content: Text(snackText),
    );
    baseScaffoldMessengerKey.currentState!.showSnackBar(snackBar);
  }

  void showSnackBarWithSnackBar({required SnackBar snackBar}) {
    baseScaffoldMessengerKey.currentState!.showSnackBar(snackBar);
  }

  void clearSnackBar() {
    baseScaffoldMessengerKey.currentState?.clearSnackBars();
  }

  void goBack() {
    if (baseNavigatorKey.currentState!.canPop()) {
      clearSnackBar();
      return baseNavigatorKey.currentState!.pop();
    }
  }
}
