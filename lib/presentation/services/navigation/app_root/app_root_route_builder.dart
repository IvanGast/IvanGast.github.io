import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/data/shared/locator.dart';
import 'package:myapp/presentation/screens/contact/contacts_screen.dart';
import 'package:myapp/presentation/screens/info/info_screen.dart';
import 'package:myapp/presentation/screens/product/product_screen.dart';
import 'package:myapp/presentation/screens/restricted/restricted.dart';
import 'package:myapp/presentation/screens/root/bloc/root_cubit.dart';
import 'package:myapp/presentation/screens/root/not_found_screen.dart';
import 'package:myapp/presentation/screens/root/root_screen.dart';
import 'package:myapp/presentation/screens/shop/shop_screen.dart';

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            builder: builder,
            maintainState: maintainState,
            settings: settings,
            fullscreenDialog: fullscreenDialog);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  logInfo('Route called: ${settings.name}');
  locator<RootCubit>().checkRoute(route: settings.name ?? '');
  if ((settings.name ?? "").startsWith(ProductScreen.route)) {
    return _route(
      settings: settings,
      screen: const ProductScreen(),
    );
  }
  switch (settings.name) {
    case ShopScreen.route:
      return _route(
        settings: settings,
        screen: const ShopScreen(),
      );

    case RestrictedScreen.route:
      return _route(
        settings: settings,
        screen: const RestrictedScreen(),
      );

    case InfoScreen.route:
      return _route(
        settings: settings,
        screen: const InfoScreen(),
      );

    case ContactsScreen.route:
      return _route(
        settings: settings,
        screen: const ContactsScreen(),
      );

    default:
      logWarning('Route not found: ${settings.name}');
      return NoAnimationMaterialPageRoute(
        settings: settings,
        builder: (context) => NotFoundScreen(
          routeBuilder: 'App Root Route Builder',
          routeName: settings.name ?? '',
        ),
      );
  }
}

NoAnimationMaterialPageRoute _route(
    {required RouteSettings settings, required Widget screen}) {
  return NoAnimationMaterialPageRoute(
    settings: settings,
    builder: (context) => RootScreen(
      routeName: settings.name ?? '',
      child: screen,
    ),
  );
}
