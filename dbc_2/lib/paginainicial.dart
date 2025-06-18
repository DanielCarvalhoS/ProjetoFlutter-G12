import 'package:dbc_2/classes/jogocard.dart';
import 'package:flutter/material.dart';


class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color.fromRGBO(178, 33, 33, 1),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('DBC', style: TextStyle(color: Colors.white, fontSize: 50, fontFamily: "Buran USSR")),
                SizedBox(height: 20),
                Text('INSPIRAÇÕES', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  'Temos aqui exemplos clássicos de jogos incríveis na qual usaremos em um futuro projeto, nomeado DBC (Distribuidora, buscando criatividade).',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  JogoCard(
                    titulo: 'Mad Max',
                    imagem: 'assets/Madmax.jpg',
                    descricao: 'Aventura Cinematográfica\nExploração\nAção',
                    rota: '/madmax',
                  ),
                  JogoCard(
                    titulo: 'Uncharted',
                    imagem: 'assets/Uncharted.jpg',
                    descricao: 'Aventura Cinematográfica\nExploração\nAção',
                    rota: '/uncharted',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}