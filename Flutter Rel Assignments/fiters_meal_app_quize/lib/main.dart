import 'package:flutter/material.dart';
import 'package:fiters_meal_app_quize/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Practice App',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
