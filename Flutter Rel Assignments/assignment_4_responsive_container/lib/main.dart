import 'package:flutter/material.dart';
import 'first_screen.dart';

void main() {
  runApp(const ResponsiveContainerApp());
}

class ResponsiveContainerApp extends StatelessWidget {
  const ResponsiveContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Containers',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const FirstScreen(),
    );
  }
}
