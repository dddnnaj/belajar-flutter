import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 80,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 4, 211, 252),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 16, 22, 27).withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row( 
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama Pengguna"),
                  SizedBox(height: 4),
                  Text("Deskripsi pengguna atau bio singkat"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


