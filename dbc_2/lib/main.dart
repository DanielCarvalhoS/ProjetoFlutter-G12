import 'package:dbc_2/paginamadmax.dart';
import 'package:dbc_2/paginauncharted.dart';
import 'package:flutter/material.dart';
import 'package:dbc_2/paginainicial.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DBC Games',
      debugShowCheckedModeBanner: false,  
      initialRoute: '/',
      routes: {
        '/': (_) => const PaginaInicial(),
        '/madmax': (_) => const PaginaMadmax(),
        '/uncharted': (_) => const PaginaUncharted(),
      },
    );
  }
}