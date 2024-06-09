// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/datasources/interfaces/home_local_datasource.dart'
    as _i8;
import '../../features/home/data/datasources/interfaces/home_remote_datasource.dart'
    as _i6;
import '../../features/home/data/datasources/local/home_hive_local_datasource.dart'
    as _i9;
import '../../features/home/data/datasources/remote/home_remote_datasource_impl.dart'
    as _i7;
import '../../features/home/data/repositories/home_repository_impl.dart'
    as _i11;
import '../../features/home/domain/entities/cart_item.dart' as _i4;
import '../../features/home/domain/repositories/home_repository.dart' as _i10;
import '../../features/home/domain/usecases/add_cart_item.dart' as _i12;
import '../../features/home/domain/usecases/checkout.dart' as _i13;
import '../../features/home/domain/usecases/delete_cart_item.dart' as _i14;
import '../../features/home/domain/usecases/get_all_cart_items.dart' as _i15;
import '../../features/home/domain/usecases/get_all_customers.dart' as _i16;
import '../../features/home/domain/usecases/get_all_products.dart' as _i17;
import '../../features/home/domain/usecases/search_customer.dart' as _i18;
import '../../features/home/domain/usecases/search_product.dart' as _i19;
import '../../features/home/domain/usecases/update_cart_item.dart' as _i20;
import '../../features/home/presentation/core/cart_bloc/cart_bloc.dart' as _i21;
import '../../features/home/presentation/customer/bloc/customers_bloc.dart'
    as _i22;
import '../../features/home/presentation/product/bloc/products_bloc.dart'
    as _i23;
import 'dio_register_module.dart' as _i25;
import 'hive_boxes_register_module.dart' as _i24;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final hiveBoxesRegisterModule = _$HiveBoxesRegisterModule();
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.Box<_i4.CartItem>>(
      () => hiveBoxesRegisterModule.cartBox(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.Dio>(() => registerModule.dio());
    gh.factory<_i6.HomeRemoteDataSource>(
        () => _i7.HomeRemoteDataSourceImpl(gh<_i5.Dio>()));
    gh.factory<_i8.HomeLocalDataSource>(
        () => _i9.HomeHiveLocalDataSource(gh<_i3.Box<_i4.CartItem>>()));
    gh.singleton<_i10.HomeRepository>(() => _i11.HomeRepositoryImpl(
          gh<_i6.HomeRemoteDataSource>(),
          gh<_i8.HomeLocalDataSource>(),
        ));
    gh.factory<_i12.AddCartItem>(
        () => _i12.AddCartItem(gh<_i10.HomeRepository>()));
    gh.factory<_i13.Checkout>(() => _i13.Checkout(gh<_i10.HomeRepository>()));
    gh.factory<_i14.DeleteCartItem>(
        () => _i14.DeleteCartItem(gh<_i10.HomeRepository>()));
    gh.factory<_i15.GetAllCartItems>(
        () => _i15.GetAllCartItems(gh<_i10.HomeRepository>()));
    gh.factory<_i16.GetAllCustomers>(
        () => _i16.GetAllCustomers(gh<_i10.HomeRepository>()));
    gh.factory<_i17.GetAllProducts>(
        () => _i17.GetAllProducts(gh<_i10.HomeRepository>()));
    gh.factory<_i18.SearchCustomer>(
        () => _i18.SearchCustomer(gh<_i10.HomeRepository>()));
    gh.factory<_i19.SearchProduct>(
        () => _i19.SearchProduct(gh<_i10.HomeRepository>()));
    gh.factory<_i20.UpdateCartItem>(
        () => _i20.UpdateCartItem(gh<_i10.HomeRepository>()));
    gh.factory<_i21.CartBloc>(() => _i21.CartBloc(
          gh<_i15.GetAllCartItems>(),
          gh<_i14.DeleteCartItem>(),
          gh<_i12.AddCartItem>(),
          gh<_i20.UpdateCartItem>(),
          gh<_i13.Checkout>(),
        ));
    gh.factory<_i22.CustomersBloc>(() => _i22.CustomersBloc(
          gh<_i16.GetAllCustomers>(),
          gh<_i18.SearchCustomer>(),
        ));
    gh.factoryParam<_i23.ProductsBloc, _i21.CartBloc, dynamic>((
      _cartBloc,
      _,
    ) =>
        _i23.ProductsBloc(
          gh<_i17.GetAllProducts>(),
          _cartBloc,
        ));
    return this;
  }
}

class _$HiveBoxesRegisterModule extends _i24.HiveBoxesRegisterModule {}

class _$RegisterModule extends _i25.RegisterModule {}
