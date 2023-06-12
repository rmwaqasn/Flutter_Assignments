import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade600,
        leading: const Icon(Icons.menu),
        title: const Text('Fiters'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.check),
          ),
        ],
      ),
      body: Container(
        height: 375,
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 22,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Adjust your meal selection!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            MyRow(
              mainHeadingString: 'Gluten-Free',
              smallHeadingString: 'Only include Gluten-Free meals',
            ),
            MyRow(
              mainHeadingString: 'Vegetarian',
              smallHeadingString: 'Only include Vegetarian meals',
              defaultBtnState: true,
            ),
            MyRow(
              mainHeadingString: 'Lactose-Free',
              smallHeadingString: 'Only include Lactose-Free meals',
            ),
            MyRow(
              mainHeadingString: 'Pepper-Free',
              smallHeadingString: 'Only include Pepper-Free meals',
              defaultBtnState: true,
            ),
            MyRow(
              mainHeadingString: 'Vegan',
              smallHeadingString: 'Only include Vegan meals',
            ),
          ],
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  final String mainHeadingString, smallHeadingString;
  final bool defaultBtnState;

  const MyRow({
    super.key,
    required this.mainHeadingString,
    required this.smallHeadingString,
    this.defaultBtnState = false,
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
              mainHeadingString,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2.5),
            Text(
              smallHeadingString,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        MySwitchBtn(defaultBtnState),
      ],
    );
  }
}

class MySwitchBtn extends StatefulWidget {
  final bool defaultBtnState;

  const MySwitchBtn(this.defaultBtnState, {super.key});

  @override
  State<MySwitchBtn> createState() => _MySwitchBtnState();
}

class _MySwitchBtnState extends State<MySwitchBtn> {
  late bool defaultBtnState;

  @override
  void initState() {
    super.initState();
    defaultBtnState = widget.defaultBtnState;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.amber,
      value: defaultBtnState,
      onChanged: (currentBtnState) {
        defaultBtnState = currentBtnState;
        setState(() {});
      },
    );
  }
}

// class DynamicColorBox extends StatefulWidget {
//   final Color userColor;
//   const DynamicColorBox({super.key, this.userColor = Colors.orange});

//   @override
//   State<DynamicColorBox> createState() => _DynamicColorBoxState();
// }

// class _DynamicColorBoxState extends State<DynamicColorBox> {
//   late Color userColor;

//   @override
//   void initState() {
//     super.initState();
//     userColor = widget.userColor;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         userColor = Colors.pink.shade900;
//         setState(() {});
//       },
//       child: Container(
//         height: 30,
//         width: 30,
//         color: userColor,
//         child: const Icon(Icons.ac_unit_rounded),
//       ),
//     );
//   }
// }