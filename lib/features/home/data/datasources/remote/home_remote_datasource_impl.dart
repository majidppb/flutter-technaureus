import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/exceptions/exceptions.dart';
import '../../../../../core/utils/api_end_points.dart';
import '../../model/customer_model.dart';
import '../../model/order_model.dart';
import '../../model/product_model.dart';
import '../interfaces/home_remote_datasource.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  const HomeRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> checkout(OrderModel order) async {
    final reponse = await _dio.post(
      ApiEndPoints.order,
      data: order.toJson(),
    );

    if (reponse.statusCode == 200) {
      print('ORDER CREATED SUCCESSFULLY!!');
    } else {
      throw const ServerException();
    }
  }

  @override
  Future<List<CustomerModel>> getAllCustomers() async {
    final reponse = await _dio.get(ApiEndPoints.customers);
    if (reponse.statusCode == 200) {
      final data = reponse.data['data'] as List;
      return data.map((e) => CustomerModel.fromJson(e)).toList();
    } else {
      throw (ServerException);
    }
  }

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final reponse = await _dio.get(ApiEndPoints.products);
    if (reponse.statusCode == 200) {
      final data = reponse.data['data'] as List;
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw (ServerException);
    }
  }

  @override
  Future<List<CustomerModel>> searchCustomer(String name) async {
    final reponse = await _dio.get(
      ApiEndPoints.customers,
      queryParameters: {'search_query': name},
    );
    if (reponse.statusCode == 200) {
      final data = reponse.data['data'] as List;

      return data.map((e) => CustomerModel.fromJson(e)).toList();
    } else {
      throw (ServerException);
    }
  }

  @override
  Future<List<ProductModel>> searchProduct(String name) async {
    final reponse = await _dio.get(
      ApiEndPoints.products,
      queryParameters: {'search_query': name},
    );
    if (reponse.statusCode == 200) {
      final data = reponse.data['data'] as List;

      return data.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw (ServerException);
    }
  }
}
