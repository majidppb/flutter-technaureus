import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../repositories/home_repository.dart';

@injectable
class DeleteCartItem implements UseCase<void, DeleteCartItemParam> {
  const DeleteCartItem(this._repository);

  final HomeRepository _repository;

  @override
  FutureVoid call(param) => _repository.deleteCartItem(param.id);
}

class DeleteCartItemParam extends Params {
  const DeleteCartItemParam({required this.id});

  final int id;
}
