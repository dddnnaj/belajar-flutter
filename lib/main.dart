import 'package:dadan_flutter_rpl3/container_widget/latihan_widget.dart';
import 'package:dadan_flutter_rpl3/gridview/grid_basic.dart';
import 'package:dadan_flutter_rpl3/listview_widget/list_separeted.dart';
import 'package:dadan_flutter_rpl3/navigation/menu.dart';
import 'package:dadan_flutter_rpl3/row.column.dart/row.column.dart';
import 'package:dadan_flutter_rpl3/sized_expanded_stack/StackWidget.dart';
import 'package:flutter/material.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan1.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan2.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan3.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan4.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan5.dart';
import 'package:dadan_flutter_rpl3/pages/form_input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Menu(),
        '/gridview': (context) => GridViewBasic(),
        '/listview_widget': (context) => ListSeparated(),
        '/container_widget': (context) => LatihanWidget(),
        '/row.column.dart': (context) => RowColumn(),
        '/sized_expanded_stack': (context) => StackWidget(),
        '/latihan': (context) => Latihan1(),
        '/Latihan2': (context) => Latihan2(),
        '/Latihan3': (context) => Latihan3(),
        '/Latihan4': (context) => Latihan4(),
        '/Latihan5': (context) => Latihan5(),
        '/FormEkskul': (context) => FormEkskul(),
      },
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Galeri'),
      //     backgroundColor: const Color.fromARGB(255, 252, 250, 250),
      //   ),
      //   body: Latihan5(),
      // ),
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
