import 'package:flutter/material.dart';
import 'package:movie_application/src/core/router/app_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppPage.routerConfig,
    );
  }
}
