// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_splashscreen_and_timers/app_dashboard_screen.dart';
// import 'package:flutter_splashscreen_and_timers/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DashBoardScreen(),
    );
  }
}
