import 'package:flutter/material.dart';
import 'package:dbc_2/classes/jogodetalhe.dart';
import 'package:dbc_2/classes/carregarjson.dart';
import 'package:dbc_2/classes/informjogos.dart';

class PaginaUncharted extends StatelessWidget {
  const PaginaUncharted({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Jogo>(
      future: carregarJogo(0), // índice 0 → Uncharted
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final jogo = snapshot.data!;
        return JogoDetalhes(
          titulo: jogo.titulo,
          imagemPrincipal: jogo.imagemPrincipal,
          sinopse: jogo.sinopse,
          info: jogo.getInfoAsString(),
          imagensGaleria: jogo.imagensGaleria,
          links: jogo.links,
        );
      },
    );
  }
}