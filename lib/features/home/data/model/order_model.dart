import '../../domain/entities/cart_item.dart';

class OrderModel {
  const OrderModel({
    required this.customerId,
    required this.products,
  });

  final int customerId;
  final List<CartItem> products;

  int totalPrice() {
    int totalPrice = 0;
    for (final item in products) {
      totalPrice = totalPrice + item.totalPrice;
    }
    return totalPrice;
  }

  Map<String, dynamic> toJson() => {
        'customer_id': customerId,
        'total_price': totalPrice(),
        'products': products.map((e) => e.toJson()).toList(),
      };
}
