import 'package:football_app/core/api/client/api_client.dart';
import 'package:football_app/core/api/client/urls.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';
import 'package:football_app/domain/interfaces/news_list_interface.dart';

class NewsListImpl implements NewsListInterface {
  NewsListImpl({
    required ApiClient dio,
  }) : _dio = dio;
  final ApiClient _dio;
  @override
  Future<ModuleList> get() async {
    final url = Urls.homeUrl;
    final res = await _dio.get(url);
    final modulesList = ModuleList.fromJson(res.data!);
    return modulesList;
  }
}
