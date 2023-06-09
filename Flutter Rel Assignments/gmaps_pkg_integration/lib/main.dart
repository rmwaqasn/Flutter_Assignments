import 'package:flutter/material.dart';
import 'package:flutter_open_street_map/flutter_open_street_map.dart';

void main() {
  runApp(const MyMapApp());
}

class MyMapApp extends StatelessWidget {
  const MyMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Open Street Map Assignment',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Office Locations'),
        centerTitle: true,
      ),
      body: FlutterOpenStreetMap(
        center: LatLong(24.85, 67.02),
        onPicked: (pickedData) {
          debugPrint('${pickedData.latLong.latitude}');
          debugPrint('${pickedData.latLong.longitude}');
          debugPrint(pickedData.address);
        },
      ),
    );
  }
}
