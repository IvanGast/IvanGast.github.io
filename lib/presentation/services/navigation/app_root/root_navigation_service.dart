import 'package:flutter/material.dart';
import 'package:myapp/presentation/services/navigation/base_navigation_service.dart';

class RootNavigationService extends BaseNavigationService {
  RootNavigationService({
    required GlobalKey<NavigatorState> navigatorKey,
    required GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey,
  }) : super(
          baseNavigatorKey: navigatorKey,
          baseScaffoldMessengerKey: scaffoldMessengerKey,
        );

  void navigateToRoot() {
    baseNavigatorKey.currentState!.popUntil(
      (Route<dynamic> route) => route.isFirst,
    );
  }
}