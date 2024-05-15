part of 'customers_bloc.dart';

@freezed
class CustomersState with _$CustomersState {
  const factory CustomersState.loading() = CustomersStateLoading;
  const factory CustomersState.loaded({
    required List<Customer> customers,
  }) = CustomersStateLoaded;
  const factory CustomersState.error() = CustomersStateError;
}
