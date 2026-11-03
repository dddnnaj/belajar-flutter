import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  const ListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 100,
          color: Colors.blue,
          child: Center(child: Text('golongan karya')),
        ),
        Container(
          width: 100,
          color: Colors.red,
          child: Center(child: Text('halo saya')),
        ),
        Container(
          width: 100,
          color: Colors.green,
          child: Center(child: Text('ganteng')),
        ),
        Container(
          width: 100,
          color: Colors.yellow,
          child: Center(child: Text('banget')),
        ),
      ],
    );
  }
}
