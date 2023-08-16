import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/presentation/screens/cart/cart_screen.dart';
import 'package:myapp/presentation/screens/contact/contacts_screen.dart';
import 'package:myapp/presentation/screens/info/info_screen.dart';
import 'package:myapp/presentation/screens/shop/shop_screen.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/services/navigation/modal/i_modal_service.dart';

import '../../../locator.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(const MenuState());

  final _rootNavigationService = locator<RootNavigationService>();
  final _modalService = locator<IModalService>();

  void openShop() {
    _rootNavigationService.navigateTo(ShopScreen.route);
  }

  void openInfo() {
    _rootNavigationService.navigateTo(InfoScreen.route);
  }

  void openContacts() {
    _rootNavigationService.navigateTo(ContactsScreen.route);
  }

  void openCart() {
    _modalService.showSlidePanel(
      panel: const CartScreen(),
    );
  }
}
