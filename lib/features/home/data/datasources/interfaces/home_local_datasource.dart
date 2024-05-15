import '../../../domain/entities/cart_item.dart';

abstract class HomeLocalDataSource {
  Future<void> addCartItem(CartItem item);

  Future<void> deleteCartItem(int id);

  Future<void> updateCartItem(CartItem item);

  Future<void> clear();

  Future<List<CartItem>> getAllCartItem();
}
