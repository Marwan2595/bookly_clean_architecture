import 'package:dio/dio.dart';

class ApiHandler {
  final Dio _dio;
  final baseUrl = "https://www.googleapis.com/books/v1/";
  ApiHandler(this._dio);
  Future<Map<String, dynamic>> get(String endpoint) async {
    var response = await _dio.get(endpoint);
    return response.data;
  }
}
