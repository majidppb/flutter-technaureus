import 'package:dart_either/dart_either.dart';

import '../errors/failure/failure.dart';

typedef FutureResult<T> = Future<Either<Failure, T>>;

typedef FutureVoid = FutureResult<void>;
