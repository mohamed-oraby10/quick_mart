import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final _baseUrl = 'https://dummyjson.com/products';
  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var result = await _dio.get('$_baseUrl$endPoint');
    return result.data;
  }
}
