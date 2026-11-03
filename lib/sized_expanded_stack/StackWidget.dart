import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.red,height: 100,width: 100,),
          Positioned(
          bottom: 0,
          right: 0,
          child: Icon(Icons.star,color: Colors.white,size: 50,),
        ),
        Positioned(top: 0,left: 0 , child: Text("label")),
        Positioned(
          right: 0,
          top: 0,
          left: 0,
          child: Container(
            color: Colors.blue.withOpacity(0.5),
            width: 100,
            height: 100,
          )
        )
      ],
    );
  }
}