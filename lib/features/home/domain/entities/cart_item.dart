import 'package:hive_flutter/hive_flutter.dart';

import 'product.dart';

part 'cart_item.g.dart';

@HiveType(typeId: 1)
class CartItem extends HiveObject {
  CartItem({
    required this.product,
    required this.quantity,
  });

  @HiveField(0)
  final Product product;

  @HiveField(1)
  final int quantity;

  int get totalPrice => quantity * product.price;

  Map<String, dynamic> toJson() => {
        'product_id': product.id,
        'quantity': quantity,
        'price': product.price,
      };

  @override
  bool operator ==(Object other) =>
      other is CartItem &&
      other.runtimeType == runtimeType &&
      other.product == product &&
      other.quantity == quantity;

  @override
  int get hashCode => Object.hash(product, quantity);
}
