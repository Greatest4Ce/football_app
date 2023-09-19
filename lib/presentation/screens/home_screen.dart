import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/domain/state/news_state/news_modules_provider.dart';
import 'package:football_app/presentation/widgets/module_list_new.dart';
// import 'package:football_app/presentation/widgets/modules_list.dart';
>>>>>>> Stashed changes

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
<<<<<<< Updated upstream
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello World!'),
=======
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
>>>>>>> Stashed changes
      ),
    );
  }
}
