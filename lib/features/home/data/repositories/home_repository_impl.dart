import 'package:dart_either/dart_either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/exceptions/exceptions.dart';
import '../../../../core/errors/failure/failure.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/customer.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/interfaces/home_local_datasource.dart';
import '../datasources/interfaces/home_remote_datasource.dart';
import '../mapper/customer_mapper.dart';
import '../mapper/product_mapper.dart';
import '../model/order_model.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl
    with CustomerMapper, ProductMapper
    implements HomeRepository {
  const HomeRepositoryImpl(this._remote, this._local);

  final HomeLocalDataSource _local;
  final HomeRemoteDataSource _remote;

  @override
  FutureVoid addCartItem(CartItem item) async {
    try {
      await _local.addCartItem(item);

      return const Right(null);
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureVoid checkout(int customer) async {
    try {
      final cartItems = await _local.getAllCartItem();

      final order = OrderModel(
        customerId: customer,
        products: cartItems,
      );

      await _remote.checkout(order);

      await _local.clear();

      return const Right(null);
    } on ServerException {
      return const Left(Failure.serverFailure());
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureVoid deleteCartItem(int id) async {
    try {
      await _local.deleteCartItem(id);

      return const Right(null);
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureResult<List<CartItem>> getAllCartItems() async {
    try {
      final result = await _local.getAllCartItem();

      return Right(result);
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureResult<List<Customer>> getAllCustomers() async {
    try {
      final result = await _remote.getAllCustomers();

      final data = result.map((e) => toCustomerEntity(e)).toList();

      return Right(data);
    } on ServerException {
      return const Left(Failure.serverFailure());
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureResult<List<Product>> getAllProducts() async {
    try {
      final result = await _remote.getAllProducts();

      final data = result.map((e) => toProductEntity(e)).toList();

      return Right(data);
    } on ServerException {
      return const Left(Failure.serverFailure());
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureResult<List<Customer>> searchCustomer(String name) async {
    try {
      final result = await _remote.searchCustomer(name);

      final data = result.map((e) => toCustomerEntity(e)).toList();

      return Right(data);
    } on ServerException {
      return const Left(Failure.serverFailure());
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureResult<List<Product>> searchProduct(String name) async {
    try {
      final result = await _remote.searchProduct(name);

      final data = result.map((e) => toProductEntity(e)).toList();

      return Right(data);
    } on ServerException {
      return const Left(Failure.serverFailure());
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }

  @override
  FutureVoid updateCartItem(CartItem item) async {
    try {
      await _local.updateCartItem(item);

      return const Right(null);
    } catch (_) {
      return const Left(Failure.clientFailure());
    }
  }
}
