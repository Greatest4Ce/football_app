import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/core/api/client/api_client.dart';
import 'package:football_app/data/server/impl/news_list_impls.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';
import 'package:football_app/domain/state/news_state/news_modules_provider.dart';

final newsModulesManagerProvider = Provider(
  (ref) => NewsModulesManager(
    ref.watch(newsModulesStateProvider.notifier),
    NewsListImpl(
      dio: ApiClient(),
    ),
  ),
);

class NewsModulesManager {
  NewsModulesManager(this._state, this._newsListImpl);
  final NewsModulesStateHolder _state;
  final NewsListImpl _newsListImpl;

  Future<void> init() async {
    ModuleList news;

    try {
      news = await _newsListImpl.get();
    } on DioException {
      rethrow;
    }

    _state.init(news: news);
  }
}
