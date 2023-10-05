// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String userName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (updatedValue) {
                userName = updatedValue;
                setState(() {});
              },
              decoration: InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1000,
                  ),
                ),
                prefixIcon: Icon(Icons.abc_sharp),
                suffixIcon: Icon(Icons.ac_unit_rounded),
              ),
            ),
            SizedBox(height: 90),
            Text('Your Value:  $userName'),
          ],
        ),
      ),
    );
  }
}
