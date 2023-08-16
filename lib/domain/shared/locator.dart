import 'package:get_it/get_it.dart';
import 'package:myapp/domain/services/cart_products_service.dart';
import 'package:myapp/domain/services/localization_service.dart';
import 'package:myapp/domain/services/products_service.dart';
import 'package:myapp/domain/services/restriction_service.dart';
import 'package:myapp/presentation/contracts/i_cart_products_service.dart';
import 'package:myapp/presentation/contracts/i_localization_service.dart';
import 'package:myapp/presentation/contracts/i_products_service.dart';
import 'package:myapp/presentation/contracts/i_restriction_service.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  await setUpServices();
}

Future<void> setUpServices() async {
  locator
    ..registerLazySingleton<ILocalizationService>(
      () => LocalizationService(
        sharedPref: locator(),
      )..init(),
    )
    ..registerLazySingleton<IRestrictionService>(
      () => RestrictionService(
        sharedPref: locator(),
      ),
    )
    ..registerLazySingleton<IProductsService>(
      () => ProductsService(),
    )
    ..registerLazySingleton<ICartProductsService>(
      () => CartProductsService(
        cartProductsRepo: locator(),
      ),
    );
}
