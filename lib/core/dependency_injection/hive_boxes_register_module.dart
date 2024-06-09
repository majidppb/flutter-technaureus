import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../features/home/domain/entities/cart_item.dart';
import '../../features/home/domain/entities/product.dart';

@module
abstract class HiveBoxesRegisterModule {
  @preResolve
  @injectable
  Future<Box<CartItem>> cartBox() {
    Hive.registerAdapter<Product>(ProductAdapter());
    Hive.registerAdapter<CartItem>(CartItemAdapter());
    return Hive.openBox<CartItem>('CartItem');
  }
}
