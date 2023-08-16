import 'package:get_it/get_it.dart';
import 'package:myapp/presentation/shared/locator.dart' as presentation_locator;
import 'package:myapp/data/shared/locator.dart' as data_locator;
import 'package:myapp/domain/shared/locator.dart' as domain_locator;

GetIt locator = GetIt.instance;

Future<void> setUpAllLocators() async {
  await presentation_locator.setUpLocator();
  await domain_locator.setUpLocator();
  await data_locator.setUpLocator();
}
