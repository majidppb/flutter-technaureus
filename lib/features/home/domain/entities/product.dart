import 'package:hive_flutter/hive_flutter.dart';

part 'product.g.dart';

@HiveType(typeId: 0)
class Product extends HiveObject {
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String image;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final int price;

  @override
  bool operator ==(Object other) =>
      other is Product && other.runtimeType == runtimeType && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
