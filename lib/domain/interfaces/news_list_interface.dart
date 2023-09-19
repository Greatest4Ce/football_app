// import 'package:football_app/core/api/response/news_list_response.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';

// ignore: one_member_abstracts
abstract class NewsListInterface {
  Future<ModuleList> get();
}
