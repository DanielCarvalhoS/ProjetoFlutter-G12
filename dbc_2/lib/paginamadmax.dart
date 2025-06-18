import 'package:flutter/material.dart';
import 'package:dbc_2/classes/jogodetalhe.dart';

class PaginaMadmax extends StatelessWidget {
  const PaginaMadmax({super.key});

  @override
  Widget build(BuildContext context) {
    return JogoDetalhes(
      titulo: 'MAD MAX',
      imagemPrincipal: 'assets/Madmax.jpg',
      sinopse:
          'Torne-se Mad Max, um guerreiro solitário em um mundo selvagem pós-apocalíptico onde carros são a chave para a sobrevivência. Neste jogo de mundo aberto em terceira pessoa repleto de ação, você precisa lutar para sobreviver na Wasteland usando técnicas de combate a pé, ou no volante, contra gangues de bandidos ferozes.',
      info: {
        'Direção/Produção': 'Franke Rooke e John Fuller',
        'Empresa/Estúdio': 'Avalanche Studios',
        'Gênero': 'Ação-aventura',
        'Lançamento': '10 de setembro de 2015',
        'Compositor': 'Mats Lundgren',
        'Designer': 'Magnus Nedfors',
        'Escritor': 'Odd Ahlgren',
        'Programador': 'Fredrik Lönn',
      },
      imagensGaleria: [
        'assets/MadmaxImg1.jpg',
        'assets/MadMaxImg2.jpg',
        'assets/MadMaxImg3.jpg',
        'assets/MadMaxImg4.jpg',
        'assets/MadMaxImg5.jpg',
      ],
    );
  }
}