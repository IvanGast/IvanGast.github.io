import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/shop/shop_screen.dart';
import 'package:myapp/presentation/services/navigation/app_root/app_root_route_builder.dart'
    as router;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/presentation/shared/locator.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/text_theme_desktop.dart';
import 'package:myapp/presentation/shared/style/text_theme_mobile.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _rootNavigationService = locator<RootNavigationService>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        theme: ThemeData(
          primarySwatch: CustomColors.greenMaterial,
          fontFamily: 'Overpass',
          textTheme: Breakpoints.isMobile
              ? TextThemeMobile.textTheme
              : TextThemeDesktop.textTheme,
          scrollbarTheme: ScrollbarThemeData(
            thickness: MaterialStateProperty.all(4),
            trackColor: MaterialStateProperty.all(
              CustomColors.white.withOpacity(0.5),
            ),
            thumbColor: MaterialStateProperty.all(
              CustomColors.lightGrey,
            ),
            radius: const Radius.circular(40),
            crossAxisMargin: -4,
          ),
        ),
        initialRoute: ShopScreen.route,
        navigatorObservers: [
          NavigationHistoryObserver(),
        ],
        onGenerateRoute: router.generateRoute,
        navigatorKey: _rootNavigationService.baseNavigatorKey,
        scaffoldMessengerKey: _rootNavigationService.baseScaffoldMessengerKey,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
