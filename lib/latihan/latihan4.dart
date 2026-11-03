import 'package:flutter/material.dart';

class Latihan4 extends StatelessWidget {
  const Latihan4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 420,
          child: Center(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  color: const Color.fromARGB(255, 2, 252, 156),
                  child: Center(child: Text(".")),
                ),
                Container(
                  height: 200,
                  color: const Color.fromARGB(255, 248, 248, 1),
                  child: Center(child: Text(".")),
                ),
                Container(
                  height: 200,
                  color: const Color.fromARGB(255, 1, 93, 252),
                  child: Center(child: Text(".")),
                ),
                Container(
                  height: 200,
                  color: const Color.fromARGB(255, 225, 4, 254),
                  child: Center(child: Text(".")),
                ),
                Container(
                  height: 200,
                  color: const Color.fromARGB(255, 255, 2, 158),
                  child: Center(child: Text(".")),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 150,
          child: Center(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 200,
                  color: const Color.fromARGB(255, 86, 86, 2),
                  child: Center(child: Text(".")),
                ),
                Container(
                  width: 200,
                  color: const Color.fromARGB(255, 4, 45, 254),
                  child: Center(child: Text(".")),
                ),
                Container(
                  width: 200,
                  color: Colors.blueAccent,
                  child: Center(child: Text(".")),
                ),
                Container(
                  width: 200,
                  color: const Color.fromARGB(255, 175, 1, 250),
                  child: Center(child: Text(".")),
                ),
                Container(
                  width: 200,
                  color: const Color.fromARGB(255, 3, 89, 250),
                  child: Center(child: Text(".")),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
