import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/internal/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
