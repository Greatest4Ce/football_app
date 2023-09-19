import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/domain/state/news_state/news_modules_provider.dart';
import 'package:football_app/presentation/widgets/module_list_new.dart';
// import 'package:football_app/presentation/widgets/modules_list.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsModules = ref.watch(newsModulesStateProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF7F6F2),
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: newsModules == null
                ? const CircularProgressIndicator()
                : ModulesListNew(moduleList: newsModules),
            // ModulesList(modulesList: newsModules),
          ),
        ),

      ),
    );
  }
}
