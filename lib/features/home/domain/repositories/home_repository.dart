import '../../../../core/utils/typedefs.dart';
import '../entities/cart_item.dart';
import '../entities/customer.dart';
import '../entities/product.dart';

abstract class HomeRepository {
  FutureResult<List<Customer>> getAllCustomers();

  FutureResult<List<Customer>> searchCustomer(String name);

  FutureResult<List<Product>> getAllProducts();

  FutureResult<List<Product>> searchProduct(String name);

  FutureResult<List<CartItem>> getAllCartItems();

  FutureVoid deleteCartItem(int id);

  FutureVoid addCartItem(CartItem item);

  FutureVoid updateCartItem(CartItem item);

  FutureVoid checkout(int customer);
}
