import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/typedefs.dart';
import '../entities/product.dart';
import '../repositories/home_repository.dart';

@injectable
class SearchProduct implements UseCase<List<Product>, SearchProductParam> {
  const SearchProduct(this._repository);

  final HomeRepository _repository;

  @override
  FutureResult<List<Product>> call(params) =>
      _repository.searchProduct(params.name);
}

class SearchProductParam extends Params {
  const SearchProductParam({required this.name});

  final String name;
}
