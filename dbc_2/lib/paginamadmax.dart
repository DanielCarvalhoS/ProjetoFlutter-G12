import 'package:flutter/material.dart';

class PaginaMadmax extends StatelessWidget{
  const PaginaMadmax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _construirTopo(context),
            const Text(
              'MAD MAX',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(178, 33, 33, 1),
              ),
            ),
            Image.asset( 'assets/Madmax.jpg',
              width: 200,
              height: 250,
            ),
            const SizedBox(height: 20),
            _construirInfos(),
            const SizedBox(height: 10),
            _construirSinopse(),
            const SizedBox(height: 10),
            _construirBotoes(),
            const SizedBox(height: 20 ),
            _construirGaleria(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _construirTopo(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(178, 33, 33, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'DBC',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Buran USSR',
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white, size: 30),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }

  Widget _construirInfos() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          RichText(
            text: TextSpan(children: [
              TextSpan(text: "Direção/Produção: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Franke Rooke e John Fuller.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Empresa/Estúdio: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Avalanche Studios.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Gênero: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Ação-aventura.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Lançamento: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "10 de setembro de 2015\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Compositor: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Mats Lundgren.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Designer: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Magnus Nedfors.\n", style: TextStyle(color: Colors.black)),
              
              TextSpan(text: "Escritor: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Odd Ahlgren.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Programador: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Fredrik Lönn.\n", style: TextStyle(color: Colors.black)),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _construirSinopse() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      color: const Color.fromRGBO(178, 33, 33, 1),
      child: const Text(
        'SINOPSE:\n'
        'Torne-se Mad Max, um guerreiro solitário em um mundo selvagem pós-apocalíptico onde carros são a chave para a sobrevivência. Neste jogo de mundo aberto em terceira pessoa repleto de ação, você precisa lutar para sobreviver na Wasteland usando técnicas de combate a pé, ou no volante, contra gangues de bandidos ferozes.',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }

  Widget _construirBotoes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _botao("TRAILER"),
        const SizedBox(width: 100),
        _botao("EMPRESA"),
      ],
    );
  }

  Widget _botao(String texto) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        texto,
        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _construirGaleria() {
    final imagens = [
      'assets/MadmaxImg1.jpg',
      'assets/MadMaxImg2.jpg',
      'assets/MadMaxImg3.jpg',
      'assets/MadMaxImg4.jpg',
      'assets/MadMaxImg5.jpg',
    ];

    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: imagens.length,
        itemBuilder: (context, index) => Image.asset(
          imagens[index],
          width: 150,
          fit: BoxFit.cover,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }
}


