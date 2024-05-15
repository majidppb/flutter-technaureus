// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/datasources/interfaces/home_local_datasource.dart'
    as _i6;
import '../../features/home/data/datasources/interfaces/home_remote_datasource.dart'
    as _i4;
import '../../features/home/data/datasources/local/home_hive_local_datasource.dart'
    as _i7;
import '../../features/home/data/datasources/remote/home_remote_datasource_impl.dart'
    as _i5;
import '../../features/home/data/repositories/home_repository_impl.dart' as _i9;
import '../../features/home/domain/repositories/home_repository.dart' as _i8;
import '../../features/home/domain/usecases/add_cart_item.dart' as _i10;
import '../../features/home/domain/usecases/checkout.dart' as _i11;
import '../../features/home/domain/usecases/delete_cart_item.dart' as _i12;
import '../../features/home/domain/usecases/get_all_cart_items.dart' as _i13;
import '../../features/home/domain/usecases/get_all_customers.dart' as _i14;
import '../../features/home/domain/usecases/get_all_products.dart' as _i15;
import '../../features/home/domain/usecases/search_customer.dart' as _i16;
import '../../features/home/domain/usecases/search_product.dart' as _i17;
import '../../features/home/domain/usecases/update_cart_item.dart' as _i18;
import '../../features/home/presentation/core/cart_bloc/cart_bloc.dart' as _i19;
import '../../features/home/presentation/customer/bloc/customers_bloc.dart'
    as _i20;
import '../../features/home/presentation/product/bloc/products_bloc.dart'
    as _i21;
import 'third_party.dart' as _i22;

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
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i4.HomeRemoteDataSource>(
        () => _i5.HomeRemoteDataSourceImpl(gh<_i3.Dio>()));
    await gh.singletonAsync<_i6.HomeLocalDataSource>(
      () {
        final i = _i7.HomeHiveLocalDataSource();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i8.HomeRepository>(() => _i9.HomeRepositoryImpl(
          gh<_i4.HomeRemoteDataSource>(),
          gh<_i6.HomeLocalDataSource>(),
        ));
    gh.factory<_i10.AddCartItem>(
        () => _i10.AddCartItem(gh<_i8.HomeRepository>()));
    gh.factory<_i11.Checkout>(() => _i11.Checkout(gh<_i8.HomeRepository>()));
    gh.factory<_i12.DeleteCartItem>(
        () => _i12.DeleteCartItem(gh<_i8.HomeRepository>()));
    gh.factory<_i13.GetAllCartItems>(
        () => _i13.GetAllCartItems(gh<_i8.HomeRepository>()));
    gh.factory<_i14.GetAllCustomers>(
        () => _i14.GetAllCustomers(gh<_i8.HomeRepository>()));
    gh.factory<_i15.GetAllProducts>(
        () => _i15.GetAllProducts(gh<_i8.HomeRepository>()));
    gh.factory<_i16.SearchCustomer>(
        () => _i16.SearchCustomer(gh<_i8.HomeRepository>()));
    gh.factory<_i17.SearchProduct>(
        () => _i17.SearchProduct(gh<_i8.HomeRepository>()));
    gh.factory<_i18.UpdateCartItem>(
        () => _i18.UpdateCartItem(gh<_i8.HomeRepository>()));
    gh.factory<_i19.CartBloc>(() => _i19.CartBloc(
          gh<_i13.GetAllCartItems>(),
          gh<_i12.DeleteCartItem>(),
          gh<_i10.AddCartItem>(),
          gh<_i18.UpdateCartItem>(),
          gh<_i11.Checkout>(),
        ));
    gh.factory<_i20.CustomersBloc>(() => _i20.CustomersBloc(
          gh<_i14.GetAllCustomers>(),
          gh<_i16.SearchCustomer>(),
        ));
    gh.factoryParam<_i21.ProductsBloc, _i19.CartBloc, dynamic>((
      _cartBloc,
      _,
    ) =>
        _i21.ProductsBloc(
          gh<_i15.GetAllProducts>(),
          _cartBloc,
        ));
    return this;
  }
}

class _$RegisterModule extends _i22.RegisterModule {}
