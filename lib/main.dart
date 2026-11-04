import 'package:flutter/material.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Galeri'),
          backgroundColor: const Color.fromARGB(255, 252, 250, 250),
        ),
        body: Latihan5(),
      ),
    );
  }
}

class Hallowidget extends StatelessWidget {
  const Hallowidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Dadan!',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
