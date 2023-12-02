import 'package:flutter/material.dart';
import 'package:movie_boxoffice/movie_boxoffice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const MovieBoxofficePage(),
    );
  }
}
