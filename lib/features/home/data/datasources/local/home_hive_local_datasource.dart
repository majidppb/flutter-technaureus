import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/cart_item.dart';
import '../../../domain/entities/product.dart';
import '../interfaces/home_local_datasource.dart';

@Singleton(as: HomeLocalDataSource)
class HomeHiveLocalDataSource implements HomeLocalDataSource {
  static const _dbName = 'cart';

  late final Box<CartItem> _db;

  @override
  Future<void> addCartItem(CartItem item) async {
    await _db.put(item.product.id, item);
  }

  @override
  Future<void> clear() => _db.clear();

  @override
  Future<void> deleteCartItem(int id) async {
    await _db.delete(id);
  }

  @override
  Future<List<CartItem>> getAllCartItem() async {
    return _db.values.toList();
  }

  @override
  Future<void> updateCartItem(CartItem item) async {
    await _db.put(item.product.id, item);
  }

  /// Initialize the hive
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(ProductAdapter().typeId)) {
      Hive.registerAdapter(ProductAdapter());
    }
    if (!Hive.isAdapterRegistered(CartItemAdapter().typeId)) {
      Hive.registerAdapter(CartItemAdapter());
    }
    _db = await Hive.openBox<CartItem>(_dbName);
  }
}
