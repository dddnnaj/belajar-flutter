import 'package:flutter/material.dart';

class ListSeparated extends StatelessWidget {
  ListSeparated({super.key});

  var partai = ["golongan karya", "halo saya", "ganteng", "banget"];
  var partaiColor = [Colors.blue, Colors.red, Colors.green, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          color: partaiColor[index],
          child: Center(child: Text(partai[index].toString())),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
          height: 10,
          radius: BorderRadius.circular(10),
          indent: 90,
          endIndent: 90,
        );
      },
    );
  }
}
