part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = ProductsStateLoading;
  const factory ProductsState.loaded({
    required List<CartItem> products,
  }) = ProductsStateLoaded;
  const factory ProductsState.error() = ProductsStateError;
}
