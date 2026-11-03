import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column
      (children: [
        Text("baris 1"),
        SizedBox(height: 20),
        Text("baris 2"),

        SizedBox(
          width: 25,
          height: 25,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Tombol"),
          ),
        )
      ],
      )
    );
  }
}