import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/cart_item.dart';
import '../../../domain/usecases/get_all_products.dart';
import '../../core/cart_bloc/cart_bloc.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(this._getAllProducts, @factoryParam this._cartBloc)
      : super(const ProductsStateLoading()) {
    on<_GetAllProducts>(_onGetAllProducts);
  }
  final CartBloc _cartBloc;
  final GetAllProducts _getAllProducts;

  Future<void> _onGetAllProducts(
      _GetAllProducts event, Emitter<ProductsState> emit) async {
    final result = await _getAllProducts.call();

    emit(
      result.fold(
        ifLeft: (failure) {
          return const ProductsStateError();
        },
        ifRight: (products) {
          final List<CartItem> items = [];
          final cartItems = _cartBloc.state.items;

          for (final item in products) {
            // if any item is already in cart, then show its quantity.
            if (cartItems.any((element) => element.product == item)) {
              final cartItem =
                  cartItems.firstWhere((element) => element.product == item);
              items.add(cartItem);
            } else {
              items.add(CartItem(product: item, quantity: 0));
            }
          }

          return ProductsStateLoaded(
            products: items,
          );
        },
      ),
    );
  }
}
