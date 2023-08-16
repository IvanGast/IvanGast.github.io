import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/presentation/contracts/i_restriction_service.dart';
import 'package:myapp/presentation/screens/contact/contacts_screen.dart';
import 'package:myapp/presentation/screens/info/info_screen.dart';
import 'package:myapp/presentation/screens/restricted/restricted.dart';
import 'package:myapp/presentation/screens/shop/shop_screen.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/services/navigation/modal/i_modal_service.dart';
import 'package:myapp/presentation/shared/bar/menu/mobile_menu_list.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../../domain/shared/locator.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState());

  final _restrictionService = locator<IRestrictionService>();
  final _rootNavigationService = locator<RootNavigationService>();
  final _modalService = locator<IModalService>();

  Future<void> checkRoute({required String route}) async {
    logDebug('Route check...');
    logDebug(route);
    try {
      final isRestrictionPassed = _restrictionService.checkRestriction();
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        if (isRestrictionPassed) {
          emit(
            Accepted(
              isShopButtonSelected: _isShopRoute(route),
              isInfoButtonSelected: _isInfoRoute(route),
              isContactsButtonSelected: _isContactsRoute(route),
            ),
          );
        } else if (route != RestrictedScreen.route) {
          _rootNavigationService.navigateTo(RestrictedScreen.route);
        }
      });
    } catch (ex, st) {
      logDebug('We have error in RootCubit');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  bool _isShopRoute(String route) => route == ShopScreen.route;
  bool _isInfoRoute(String route) => route == InfoScreen.route;
  bool _isContactsRoute(String route) => route == ContactsScreen.route;


  void goBack() {
    _rootNavigationService.goBack();
  }

  void openMenu() {
    _modalService.showSlidePanel(
      panel: const MobileMenuList(),
    );
  }
}
