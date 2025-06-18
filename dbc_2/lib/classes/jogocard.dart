import 'package:flutter/material.dart';

class JogoCard extends StatelessWidget {
  final String titulo;
  final String imagem;
  final String descricao;
  final String rota;

  const JogoCard({
    super.key,
    required this.titulo,
    required this.imagem,
    required this.descricao,
    required this.rota,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 170,
          height: 280,
          child: Image.asset(imagem),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, rota);
          },
          child: _buildTituloDescricao(),
        ),
      ],
    );
  }
  Widget _buildTituloDescricao() {
    return Column(
      children: [
        Text(
          titulo,
          style: const TextStyle(
            color: Color.fromRGBO(178, 33, 33, 1),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          descricao,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}