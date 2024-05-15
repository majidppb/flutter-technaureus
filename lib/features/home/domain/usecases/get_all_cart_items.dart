import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/cart_item.dart';
import '../repositories/home_repository.dart';

@injectable
class GetAllCartItems implements UseCaseNoParams<List<CartItem>> {
  const GetAllCartItems(this._repository);

  final HomeRepository _repository;

  @override
  FutureResult<List<CartItem>> call() => _repository.getAllCartItems();
}
