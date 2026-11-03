import 'package:flutter/material.dart';

class ListBuilderWidget extends StatelessWidget {
  ListBuilderWidget({super.key});

  var partai = ["golongan karya", "halo saya", "ganteng", "banget"];
  var partaiColor = [Colors.blue, Colors.red, Colors.green, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          color: partaiColor[index],
          child: Center(child: Text(partai[index].toString())),
        );
      },
    );
  }
}
