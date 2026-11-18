import 'package:dadan_flutter_rpl3/pages/form_input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:dadan_flutter_rpl3/container_widget/container_widget.dart';
import 'package:dadan_flutter_rpl3/latihan/latihan1.dart';
import 'package:dadan_flutter_rpl3/navigation/menu.dart';
import 'package:dadan_flutter_rpl3/pages/form_output_page.dart';

class AppRoute {
  static const menu = '/';
  static const grid = '/GridView';
  static const list = '/Latihan1';
  static const listBasic = '/list-basic';
  static const containerwidget = '/container_widget';
  static const formulir = '/FormEkskul';

  static Map<String, WidgetBuilder> routes = {
    menu: (context) => Menu(),
    list: (context) => Latihan1(),
    containerwidget: (context) => BelajarContainer(),
    formulir: (context) => FormEkskul(),
  };
}
