// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff514745),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromARGB(255, 155, 233, 183),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/vector3.png",
                        width: 300,
                        height: 300,
                      ),
                      const Text(
                        "Get notified when \n work happens",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 33, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Take control of notifications, \n collaborate live or on your own time",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            letterSpacing: 0.3),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 10,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(180, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return Page1();
                              }));
                            },
                            child: Text("START"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
