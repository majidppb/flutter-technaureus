import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../utils/api_end_points.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl),
      );
}
