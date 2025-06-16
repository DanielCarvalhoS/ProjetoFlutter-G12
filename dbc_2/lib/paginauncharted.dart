import 'package:flutter/material.dart';

class PaginaUncharted extends StatelessWidget{
  const PaginaUncharted({super.key});
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _construirTopo(context),
            const Text(
              'UNCHARTED',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(178, 33, 33, 1),
              ),
            ),
            Image.asset('assets/Uncharted.jpg',
              width: 200,
              height: 250,
            ),
            const SizedBox(height: 10),
            _construirInfos(),
            const SizedBox(height: 10),
            _construirSinopse(),
            const SizedBox(height: 10),
            _construirBotoes(),
            const SizedBox(height: 10),
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
              TextSpan(text: "Amy Hennig e Richard Lemarchand\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Empresa/Estúdio: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Naughty Dog.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Gênero: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Ação-aventura.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Lançamento: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "7 de dezembro de 2007\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Compositor: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Greg Edmonson.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Designers: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Richard Lemarchand, Hirokazu Yasuhara e Neil Druckmann.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Escritores: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Amy Hennig, Neil Druckmann e Josh Scherr.\n", style: TextStyle(color: Colors.black)),

              TextSpan(text: "Programadores: ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Pål-Kristian Engstad, Dan Liebgold e Travis McIntosh.\n", style: TextStyle(color: Colors.black)),
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
        'Depois de se aposentar como caçador de tesouros, Nathan Drake se vê obrigado a voltar ao mundo dos ladrões. Agora, o que está em jogo é algo muito mais pessoal. Nate embarca numa jornada pelo globo para desvendar uma conspiração histórica por trás de um famoso tesouro pirata. direção/produção: Neil Druckmann e Bruce Straley',
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
      'assets/NathanDrake.jpg',
      'assets/NathanDrake2.jpg',
      'assets/NathanDrake3.jpg',
      'assets/NathanDrake4.jpg',
      'assets/NathanDrake5.jpg',
    ];

    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: imagens.length,
        itemBuilder: (context, index) => Image.asset(
          imagens[index],
          width: 200,
          fit: BoxFit.cover,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }
}