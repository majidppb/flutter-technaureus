import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/customer.dart';
import '../../../domain/usecases/get_all_customers.dart';
import '../../../domain/usecases/search_customer.dart';

part 'customers_event.dart';
part 'customers_state.dart';
part 'customers_bloc.freezed.dart';

@injectable
class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  CustomersBloc(this._getAllCustomers, this._searchCustomer)
      : super(const CustomersStateLoading()) {
    on<_GetAllCustomers>(_onGetAllCustomers);
  }

  final GetAllCustomers _getAllCustomers;
  String? _prevoiusSearchQuery;
  final SearchCustomer _searchCustomer;

  Future<void> _onGetAllCustomers(
      _GetAllCustomers event, Emitter<CustomersState> emit) async {
    // search query has not changed
    if (event.name == _prevoiusSearchQuery && state is! CustomersStateError) {
      return;
    }

    _prevoiusSearchQuery = event.name;

    emit(const CustomersStateLoading());

    late final dynamic result;

    if (event.name.isEmpty) {
      result = await _getAllCustomers.call();
    } else {
      result = await _searchCustomer.call(
        SearchCustomerParam(name: event.name),
      );
    }

    emit(
      result.fold(
        ifLeft: (failure) {
          return const CustomersStateError();
        },
        ifRight: (customers) {
          return CustomersStateLoaded(customers: customers);
        },
      ),
    );
  }
}
