import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String _token = 'f991d29d4fmsh8cb41dea7194754p160949jsnd0c74d2f5434';
  final String _host = 'bloomberg-market-and-financial-news.p.rapidapi.com';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['X-RapidAPI-Key'] = _token;
    options.headers['X-RapidAPI-Host'] = _host;
    options.queryParameters = {'id': 'markets'};
    handler.next(options);
  }
}
