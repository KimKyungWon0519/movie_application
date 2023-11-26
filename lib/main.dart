import 'package:flutter/material.dart';
import 'package:movie_application/src/core/router/app_page.dart';
import 'package:movie_application/src/core/values/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme(),
      routerConfig: AppPage.routerConfig,
    );
  }
}
