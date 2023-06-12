import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Responsive Container'),
        //   centerTitle: true,
        //   actions: const [Icon(Icons.flutter_dash)],
        // ),
        body: Column(
          children: [
            Container(
              height: screenHeight * 0.25,
              width: screenWidth,
              color: Colors.red,
              child: const Center(
                child: Text(
                  '25%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: screenHeight * 0.75,
              width: screenWidth,
              color: Colors.green,
              child: const Center(
                child: Text(
                  '75%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
