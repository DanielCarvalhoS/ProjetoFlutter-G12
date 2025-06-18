import 'package:dbc_2/classes/jogodetalhe.dart';
import 'package:flutter/material.dart';


class PaginaUncharted extends StatelessWidget {
  const PaginaUncharted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JogoDetalhes(
        titulo: "UNCHARTED",
        imagemPrincipal: "assets/Uncharted.jpg",
        sinopse:
            'Assuma o papel de Nathan Drake e embarque em uma jornada épica por ruínas antigas e civilizações esquecidas. Em Uncharted, a narrativa cinematográfica se une à jogabilidade envolvente para entregar uma das maiores aventuras do mundo dos games.',
        info: {
          "Direção/Produção": "Amy Hennig e Richard Lemarchand.",
          "Empresa/Estúdio": "Naughty Dog",
          "Gênero": "Ação-aventura",
          "Lançamento": "19 de novembro de 2007",
          "Compositor": "Greg Edmonson.",
          "Designer": "Richard Lemarchand, Hirokazu Yasuhara e Neil Druckmann.",
          "Escritor": "Amy Hennig, Neil Druckmann e Josh Scherr.",
          "Programador": "Pål-Kristian Engstad, Dan Liebgold e Travis McIntosh.",
        },
        imagensGaleria: [
          "assets/NathanDrake.jpg",
          "assets/NathanDrake2.jpg",
          "assets/NathanDrake3.jpg",
          "assets/NathanDrake4.jpg",
          "assets/NathanDrake5.jpg",
        ],
      ),
    );
  }
}