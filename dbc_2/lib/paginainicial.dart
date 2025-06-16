import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
 body: Column(
  children: [
    Container(
      width: double.infinity,
      color: const Color.fromRGBO(178, 33, 33, 1),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('DBC',
                style: TextStyle(
                   color: Colors.white,
                   fontSize: 50,
                   fontFamily: "Buran USSR"),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('INSPIRAÇÕES',
              style: TextStyle(
                 color: Colors.white,
                 fontSize: 50,
                 fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('Temos aqui exemplos clássicos de jogos incríveis na qual usaremos em um futuro projeto, nomeado DBC (Distribuidora, buscando criatividade). ',
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ],
      ),
    ),
    
    Expanded( 
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                   width: 200,
                   height: 280,
                   child: Image.asset('assets/Madmax.jpg'),
                 ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/segunda");
                  },
            child: Column(
                children: [
                    Text('Mad Max',
                  style: TextStyle(color: Color.fromRGBO(178, 33, 33, 1), fontSize: 24, fontWeight: FontWeight.bold),
                ),
                    Text('Aventura Cinematográfica\nExploração\nAção',
                    textAlign: TextAlign.center,
                    )
                ]),
            )],
            ),
            Column(
              children: [
                SizedBox(
                   width: 200,
                   height: 280,
                   child: Image.asset('assets/Uncharted.jpg'), 
                 ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/terceira");
                  },
            child: Column(
                children: [
                    Text('Uncharted',
                  style: TextStyle(color: Color.fromRGBO(178, 33, 33, 1), fontSize: 24, fontWeight: FontWeight.bold),
                ),
                    Text('Aventura Cinematográfica\nExploração\nAção',
                    textAlign: TextAlign.center,
                    )
                ],
            ),
                ),
              ]
            )
          ],
        )
      )
    )
  ],
),
 ));
}}
