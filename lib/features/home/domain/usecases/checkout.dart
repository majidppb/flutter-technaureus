import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../repositories/home_repository.dart';

@injectable
class Checkout implements UseCase<void, CheckoutParam> {
  const Checkout(this._repository);

  final HomeRepository _repository;

  @override
  FutureVoid call(param) => _repository.checkout(param.customer);
}

class CheckoutParam extends Params {
  const CheckoutParam({required this.customer});

  final int customer;
}
