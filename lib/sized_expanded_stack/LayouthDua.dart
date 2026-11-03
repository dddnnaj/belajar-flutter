import 'package:flutter/material.dart';

class LayouthDua extends StatelessWidget {
  const LayouthDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.image, color: Colors.white, size: 50),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.all(50),
              color: Colors.red.withOpacity(0.5),
              child: Text("-20")
              ),
            ),
            Positioned(bottom: 8, right: 8, child: Icon(Icons.favorite_border)),
        ]
      )
    );
  }
}