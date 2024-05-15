import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/cart_item.dart';
import '../repositories/home_repository.dart';

@injectable
class UpdateCartItem implements UseCase<void, UpdateCartItemParam> {
  const UpdateCartItem(this._repository);

  final HomeRepository _repository;

  @override
  FutureVoid call(param) => _repository.updateCartItem(param.item);
}

class UpdateCartItemParam extends Params {
  const UpdateCartItemParam({required this.item});

  final CartItem item;
}
