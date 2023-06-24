import 'package:flutter/material.dart';
import 'package:movie_app/core/services_locator/services_locator.dart';
import 'package:movie_app/movies/presentation/screens/movie_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MoviesScreen(),
    );
  }
}
