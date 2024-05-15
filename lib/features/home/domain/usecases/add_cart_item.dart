import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/cart_item.dart';
import '../repositories/home_repository.dart';

@injectable
class AddCartItem implements UseCase<void, AddCartItemParam> {
  const AddCartItem(this._repository);

  final HomeRepository _repository;

  @override
  FutureVoid call(param) => _repository.addCartItem(param.item);
}

class AddCartItemParam extends Params {
  const AddCartItemParam({required this.item});

  final CartItem item;
}
