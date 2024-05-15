part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<Offer> offers,
    required List<ProductCategory> categories,
    required List<Product> discover,
  }) = _HomeState;
}
