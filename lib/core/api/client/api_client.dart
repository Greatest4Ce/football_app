import 'package:dio/dio.dart';
import 'package:football_app/core/api/client/interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  ApiClient() {
    _dio = Dio();
    _dio.interceptors.add(
      AuthInterceptor(),
    );
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        compact: false,
      ),
    );
  }
  late Dio _dio;

  Future<Response<Map<String, Object?>>> get(String url) async {
    try {
      final res = await _dio.get<Map<String, Object?>>(url);
      return res;
    } on DioException {
      rethrow;
    }
  }
}
