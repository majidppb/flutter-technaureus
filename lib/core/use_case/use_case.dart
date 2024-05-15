import '../utils/typedefs.dart';

/// Parameters for [UseCase]
abstract class Params {
  const Params();
}

abstract class UseCase<T, P extends Params> {
  FutureResult<T> call(P params);
}

/// [UseCase] with no [Params].
abstract class UseCaseNoParams<T> {
  FutureResult<T> call();
}
