import 'dart:convert';
import 'package:flutter/services.dart';
import 'informjogos.dart';

Future<Jogo> carregarJogo(int index) async {
  final String jsonString = await rootBundle.loadString('assets/json/jogos.json');
  final List<dynamic> jsonList = jsonDecode(jsonString);
  return Jogo.fromJson(jsonList[index]);
}