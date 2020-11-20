import 'package:flutter/material.dart';
import 'package:parcial3_practica2/src/paginas/menuIconos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
      child: menu_iconos(),
    ));
  }
}
