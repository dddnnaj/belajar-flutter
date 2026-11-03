import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [Icon(Icons.settings, size: 48)]),
        Column(children: [Icon(Icons.folder, size: 48)]),
        Column(children: [Icon(Icons.search, size: 48)]),
      ],
    );
  }
}
