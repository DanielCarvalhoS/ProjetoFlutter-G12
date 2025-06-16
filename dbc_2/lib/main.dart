import 'package:dbc_2/paginainicial.dart';
import 'package:dbc_2/paginamadmax.dart';
import 'package:dbc_2/paginauncharted.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
     routes:{
      '/': (_) => PaginaInicial(),
      '/segunda': (_) => PaginaMadmax(),
      '/terceira':(_) => PaginaUncharted()
     }
   );
  }
}
