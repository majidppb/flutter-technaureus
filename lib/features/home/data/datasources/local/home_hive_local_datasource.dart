import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/cart_item.dart';
import '../interfaces/home_local_datasource.dart';

@Injectable(as: HomeLocalDataSource)
class HomeHiveLocalDataSource implements HomeLocalDataSource {
  final Box<CartItem> _db;

  const HomeHiveLocalDataSource(this._db);

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
}
