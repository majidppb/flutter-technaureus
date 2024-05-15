import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/customer.dart';
import '../repositories/home_repository.dart';

@injectable
class SearchCustomer implements UseCase<List<Customer>, SearchCustomerParam> {
  const SearchCustomer(this._repository);

  final HomeRepository _repository;

  @override
  FutureResult<List<Customer>> call(params) =>
      _repository.searchCustomer(params.name);
}

class SearchCustomerParam extends Params {
  const SearchCustomerParam({required this.name});

  final String name;
}
