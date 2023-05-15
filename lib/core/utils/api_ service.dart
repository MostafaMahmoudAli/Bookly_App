import 'package:dio/dio.dart';

import 'end_points.dart';

class ApiService
{
  final Dio?_dio;
  ApiService(this._dio);

  Future<Map<String,dynamic>>get ({required String endPoint})async
  {
    var response = await _dio!.get("$EndPoints.baseUrl$endPoint");
    return response.data;
  }
}