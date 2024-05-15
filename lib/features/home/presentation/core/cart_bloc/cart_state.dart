part of 'cart_bloc.dart';

enum CartStatus { loading, error, loaded }

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(CartStatus.loading) CartStatus status,
    @Default([]) List<CartItem> items,
    @Default(0) int totalPrice,
    bool? checkoutStatus,
  }) = _CartState;
}
