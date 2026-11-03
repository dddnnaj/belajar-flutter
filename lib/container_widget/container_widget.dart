import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top:10),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 5, 20, 33),
        borderRadius: BorderRadius.circular(8),
        border:Border.all(color: const Color.fromARGB(255, 37, 28, 1),width: 5,),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 2, 253, 232),
            const Color.fromARGB(255, 42, 230, 9),
            const Color.fromARGB(255, 0, 0, 0),
          ],
        ),
        image: DecorationImage(
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEQx6a5mzZ79kNWnjzy3nGV7QBUT1RK6vMrhD3Wk3m8g&s=10'),
          fit: BoxFit.cover,
        ),
      ),
      transform: Matrix4.rotationX(0.1),
      child: Center(child: Text('halo ganteng')),
    );
  }
}