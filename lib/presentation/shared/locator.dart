import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:myapp/domain/services/dialog_service.dart';
import 'package:myapp/presentation/contracts/i_dialog_service.dart';
import 'package:myapp/presentation/screens/cart/bloc/cart_cubit.dart';
import 'package:myapp/presentation/screens/restricted/bloc/restricted_cubit.dart';
import 'package:myapp/presentation/screens/shop/bloc/products_cubit.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/services/navigation/modal/i_modal_service.dart';
import 'package:myapp/presentation/services/navigation/modal/modal_service.dart';
import 'package:myapp/presentation/shared/bar/language/bloc/language_cubit.dart';

import '../screens/root/bloc/root_cubit.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  await _setUpNavigationServices();
  await _setUpModalService();
  await _setUpDialogService();
  await _setUpBlocsAndCubits();
}

Future<void> _setUpNavigationServices() async {
  locator.registerLazySingleton(
    () => RootNavigationService(
      navigatorKey: GlobalKey<NavigatorState>(
        debugLabel: 'RootNavigationKey',
      ),
      scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),
    ),
  );
}

Future<void> _setUpBlocsAndCubits() async {
  locator.registerLazySingleton<RootCubit>(() => RootCubit());
  locator.registerLazySingleton<LanguageCubit>(() => LanguageCubit());
  locator.registerLazySingleton<CartCubit>(() => CartCubit());
}

Future<void> _setUpModalService() async {
  locator.registerSingleton<IModalService>(
    ModalService(
      rootNavigationService: locator(),
    ),
  );
}

Future<void> _setUpDialogService() async {
  locator.registerSingleton<IDialogService>(
    DialogService(
      rootNavigationService: locator(),
    ),
  );
}
