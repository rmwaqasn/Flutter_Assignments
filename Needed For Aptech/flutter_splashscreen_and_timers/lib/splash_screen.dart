// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'app_dashboard_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(
//       Duration(seconds: 1),
//       () {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DashBoardScreen(),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.yellow, Colors.orange],
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 100),
//               Image.network(
//                 'https://raw.githubusercontent.com/flutter-rus/flutter-rus.github.io/master/images/logo.png',
//                 height: 200,
//                 width: 200,
//               ),
//               SizedBox(height: 100),
//               Text(
//                 'Splash Screen',
//                 style: TextStyle(
//                   color: Colors.indigo,
//                   fontSize: 50,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
