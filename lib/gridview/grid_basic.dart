import 'package:flutter/material.dart';

class GridViewBasic extends StatelessWidget {
  const GridViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.6,
      ),
      children: [
        Container(
          color: Colors.lime,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,
            textColor: Colors.blue,
          ),
        ),

        Container(
          color: const Color.fromARGB(255, 6, 45, 238),
          child: FlutterLogo(size: 64, style: FlutterLogoStyle.horizontal),
        ),

        Container(
          color: const Color.fromARGB(255, 235, 119, 3),
          child: FlutterLogo(size: 64, style: FlutterLogoStyle.stacked),
        ),

        Container(
          color: const Color.fromARGB(255, 168, 7, 255),
          child: FlutterLogo(size: 64, style: FlutterLogoStyle.markOnly),
        ),
      ],
    );
  }
}
