import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/data/sources/local/hive/hive_boxes.dart';
import 'package:myapp/data/sources/local/model/cart_product.dart';

class HiveCore {
  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(CartProductAdapter());

    await Hive.openBox<CartProduct>(HiveBoxes.productBox);
  }
}
