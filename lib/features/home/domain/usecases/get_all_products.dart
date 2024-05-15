import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/product.dart';
import '../repositories/home_repository.dart';

@injectable
class GetAllProducts implements UseCaseNoParams<List<Product>> {
  const GetAllProducts(this._repository);

  final HomeRepository _repository;

  @override
  FutureResult<List<Product>> call() => _repository.getAllProducts();
}
