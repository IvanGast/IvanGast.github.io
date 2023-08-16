import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/data/sources/local/hive/hive_boxes.dart';
import 'package:myapp/data/sources/local/hive/hive_core.dart';
import 'package:myapp/data/sources/local/hive/repositories/cart_products_repository.dart';
import 'package:myapp/data/sources/local/shared_pref/shared_pref_repository.dart';
import 'package:myapp/data/sources/remote/products_api/products_api_client.dart';
import 'package:myapp/domain/contracts/i_clients/i_product_api_client.dart';
import 'package:myapp/domain/contracts/i_repositories/i_cart_products_repository.dart';
import 'package:myapp/domain/contracts/i_repositories/i_shared_pref_repository.dart';

import 'package:http/http.dart' as http;

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  await _setupSharedPref();
  await _setUpHiveCore();
  await _setUpHiveRepositories();
  await _setUpApiClients();
}

Future<void> _setupSharedPref() async {
  final instance = await SharedPrefRepository.getInstance();
  locator.registerSingleton<ISharedPref>(instance);
}

Future<void> _setUpHiveCore() async {
  final hiveCore = HiveCore();
  await hiveCore.init();
}

Future<void> _setUpHiveRepositories() async {
  locator.registerLazySingleton<ICartProductsRepository>(
    () => CartProductsRepository(
      productBox: Hive.box(HiveBoxes.productBox),
    ),
  );
}

Future<void> _setUpApiClients() async {
  locator.registerLazySingleton<IProductApiClient>(
    () => ProductApiClient(
      client: http.Client(),
    ),
  );
}
