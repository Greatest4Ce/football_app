import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/domain/state/news_state/news_modules_manager.dart';
import 'package:football_app/presentation/screens/home_screen.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(newsModulesManagerProvider).init();
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
