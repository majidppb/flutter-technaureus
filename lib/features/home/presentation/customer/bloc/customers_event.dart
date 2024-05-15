part of 'customers_bloc.dart';

@freezed
class CustomersEvent with _$CustomersEvent {
  const factory CustomersEvent.getCustomers({@Default('') String name}) =
      _GetAllCustomers;
}
