import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlutterLogo(size: 50, style: FlutterLogoStyle.stacked),
        FlutterLogo(size: 50, style: FlutterLogoStyle.horizontal),
        FlutterLogo(size: 50),

        Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ini adalah text 1"),
            Text("Ini adalah text 2"),
          ],
        ),
      ],
    );
  }
}
