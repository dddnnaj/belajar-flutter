import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: Colors.yellow),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            height: 50,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            height: 50,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
            height: 50,
          ),
        ),
      ],
    );
  }
}