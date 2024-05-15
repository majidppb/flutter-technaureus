import '../../domain/entities/product.dart';
import '../model/product_model.dart';

mixin ProductMapper {
  Product toProductEntity(ProductModel model) {
    return Product(
      id: model.id!,
      name: model.name ?? '',
      price: model.price ?? 0,
      image: model.image ?? '',
    );
  }
}
