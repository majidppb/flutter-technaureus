import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/customer.dart';
import '../repositories/home_repository.dart';

@injectable
class GetAllCustomers implements UseCaseNoParams<List<Customer>> {
  const GetAllCustomers(this._repository);

  final HomeRepository _repository;

  @override
  FutureResult<List<Customer>> call() => _repository.getAllCustomers();
}
