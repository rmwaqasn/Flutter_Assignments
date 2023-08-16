// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Fiters'),
        actions: [
          Icon(Icons.check),
          SizedBox(width: 7),
        ],
      ),
      body: Container(
        height: 360,
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Adjust your meal selection!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
            SizedBox(),
            MyRow(
              mainHeading: 'Gluten-Free',
              discription: 'only include Gluten-Free meals',
            ),
            MyRow(
              mainHeading: 'Vagetarian',
              discription: 'only include Vegetarian meals',
            ),
            MyRow(
              mainHeading: 'Lactose-Free',
              discription: 'only include Lactose-Free meals',
              switchState: true,
            ),
            MyRow(
              mainHeading: 'Vegan',
              discription: 'only include Vegan-Free meals',
            ),
            MyRow(
              mainHeading: 'Salt-Less',
              discription: 'only include Salt-Free meal',
              switchState: true,
            ),
          ],
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  final String mainHeading, discription;
  final bool switchState;

  const MyRow({
    super.key,
    required this.mainHeading,
    required this.discription,
    this.switchState = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainHeading,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 2.5),
            Text(
              discription,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
        MySwitch(switchState: switchState),
      ],
    );
  }
}

class MySwitch extends StatefulWidget {
  final bool switchState;

  const MySwitch({
    super.key,
    this.switchState = false,
  });

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  late bool switchState;

  @override
  void initState() {
    switchState = widget.switchState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchState,
      onChanged: (updatedState) {
        switchState = updatedState;
        setState(() {});
      },
    );
  }
}
