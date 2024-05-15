part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.checkout({required int customer}) = _Checkout;
  const factory CartEvent.getAllItems() = _GetAllItems;
  const factory CartEvent.resetCheckoutStatus() = _ResetCheckoutStatus;
  const factory CartEvent.deleteItem(int id) = _DeleteItem;
  const factory CartEvent.addItem(Product product, int quantity) = _AddItem;
  const factory CartEvent.updateItem(Product product, int quantity) =
      _UpdateItem;
}
