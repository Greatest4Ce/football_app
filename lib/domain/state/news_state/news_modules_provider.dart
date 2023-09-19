import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/domain/entity/module_list/module_list.dart';

final newsModulesStateProvider =
    StateNotifierProvider<NewsModulesStateHolder, ModuleList?>(
  (ref) => NewsModulesStateHolder(),
);

class NewsModulesStateHolder extends StateNotifier<ModuleList?> {
  NewsModulesStateHolder([super.empty]);

  void init({required ModuleList news}) {
    state = news;
  }
}
