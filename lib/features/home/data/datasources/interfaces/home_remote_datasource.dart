import '../../model/customer_model.dart';
import '../../model/order_model.dart';
import '../../model/product_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<CustomerModel>> getAllCustomers();

  Future<List<CustomerModel>> searchCustomer(String name);

  Future<List<ProductModel>> getAllProducts();

  Future<List<ProductModel>> searchProduct(String name);

  Future<void> checkout(OrderModel order);
}
