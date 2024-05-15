import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/cart_item.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/add_cart_item.dart';
import '../../../domain/usecases/checkout.dart';
import '../../../domain/usecases/delete_cart_item.dart';
import '../../../domain/usecases/get_all_cart_items.dart';
import '../../../domain/usecases/update_cart_item.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._getAllCartItems, this._deleteCartItem, this._addCartItem,
      this._updateCartItem, this._checkout)
      : super(const CartState()) {
    on<_GetAllItems>(_onGetAllItems);
    on<_ResetCheckoutStatus>(_onResetCheckoutStatus);
    on<_DeleteItem>(_onDeleteItem);
    on<_AddItem>(_onAddItem);
    on<_UpdateItem>(_onUpdateItem);
    on<_Checkout>(_onCheckout);
  }

  final AddCartItem _addCartItem;
  final Checkout _checkout;
  final DeleteCartItem _deleteCartItem;
  final GetAllCartItems _getAllCartItems;
  final UpdateCartItem _updateCartItem;

  Future<void> _onGetAllItems(
      _GetAllItems event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: CartStatus.loading));

    final result = await _getAllCartItems.call();

    emit(
      result.fold(
        ifLeft: (failure) {
          add(const _GetAllItems());
          return state.copyWith(status: CartStatus.error);
        },
        ifRight: (items) {
          int totalPrice = 0;
          for (final item in items) {
            totalPrice = totalPrice + item.totalPrice;
          }
          return CartState(
            status: CartStatus.loaded,
            items: items,
            totalPrice: totalPrice,
          );
        },
      ),
    );
  }

  void _onResetCheckoutStatus(
      _ResetCheckoutStatus event, Emitter<CartState> emit) {
    emit(state.copyWith(checkoutStatus: null));
  }

  Future<void> _onDeleteItem(_DeleteItem event, Emitter<CartState> emit) async {
    await _deleteCartItem.call(DeleteCartItemParam(id: event.id));

    add(const _ResetCheckoutStatus());
    add((const _GetAllItems()));
  }

  Future<void> _onAddItem(_AddItem event, Emitter<CartState> emit) async {
    await _addCartItem.call(
      AddCartItemParam(
        item: CartItem(
          product: event.product,
          quantity: event.quantity,
        ),
      ),
    );

    add(const _ResetCheckoutStatus());
    add((const _GetAllItems()));
  }

  Future<void> _onUpdateItem(_UpdateItem event, Emitter<CartState> emit) async {
    await _updateCartItem.call(
      UpdateCartItemParam(
        item: CartItem(
          product: event.product,
          quantity: event.quantity,
        ),
      ),
    );

    add(const _ResetCheckoutStatus());
    add((const _GetAllItems()));
  }

  Future<void> _onCheckout(_Checkout event, Emitter<CartState> emit) async {
    final result = await _checkout.call(
      CheckoutParam(customer: event.customer),
    );

    emit(
      result.fold(
        ifLeft: (failure) {
          return state.copyWith(checkoutStatus: false);
        },
        ifRight: (success) {
          return const CartState(
            status: CartStatus.loaded,
            checkoutStatus: true,
          );
        },
      ),
    );
  }
}
