import 'package:flutter/material.dart';

class LatihanWidget extends StatelessWidget {
  const LatihanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 5, 20, 33),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(255, 37, 28, 1),
          width: 5,
        ),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 2, 253, 232),
            const Color.fromARGB(255, 42, 230, 9),
            const Color.fromARGB(255, 0, 0, 0),
          ],
        ),
        image: DecorationImage(
          image: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS96aUs4GTToaZMe-2-qGrty_Jacdo5BAsKSDs4ZDRRNg&s=10',
          ),
          fit: BoxFit.cover,
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child:  Text(
        'Deretan mobil yang terjebak macet di Tol Dalam Kota, Jakarta. Kemacetan Jakarta disebut mengalami keparahan tertinggi pada Jumat sore',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
