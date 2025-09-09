import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JogoDetalhes extends StatelessWidget {
  final String titulo;
  final String imagemPrincipal;
  final String sinopse;
  final Map<String, String> info;
  final VoidCallback? onClose;
  final List<String> imagensGaleria;
  final Map<String, String> links;

  const JogoDetalhes({
    super.key,
    required this.titulo,
    required this.imagemPrincipal,
    required this.sinopse,
    required this.info,
    this.onClose,
    required this.imagensGaleria,
    required this.links,

  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            _buildTitulo(),
            _buildImagemPrincipal(),
            const SizedBox(height: 15),
            _buildInformacoes(),
            _buildSinopse(),
            const SizedBox(height: 10),
            _buildBotoes(),
            const SizedBox(height: 10),
            _buildGaleria(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  /// Cabeçalho vermelho com título e botão de fechar
  Container _buildHeader(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(178, 33, 33, 1),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
            onPressed: onClose ?? () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
  /// Título principal do jogo
  Text _buildTitulo() {
    return Text(
      titulo,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(178, 33, 33, 1),
      ),
    );
  }
  /// Imagem principal do jogo
  Image _buildImagemPrincipal() {
    return Image.asset(imagemPrincipal, width: 200, height: 250);
  }
  /// Informações como diretor, gênero etc.
  Padding _buildInformacoes() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: RichText(
        text: TextSpan(
          children: info.entries.map((entry) => [
            TextSpan(
              text: '${entry.key}: ',
              style: const TextStyle(color: Colors.red),
            ),
            TextSpan(
              text: '${entry.value}\n',
              style: const TextStyle(color: Colors.black),
            ),
          ]).expand((e) => e).toList(),
        ),
      ),
    );
  }
  /// Sinopse do jogo
  Container _buildSinopse() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      color: const Color.fromRGBO(178, 33, 33, 1),
      child: Text(
        'SINOPSE:\n$sinopse',
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
  /// Botões de ação
  Row _buildBotoes() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () async {
          final url = Uri.parse(links["trailer"] ?? "");
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
        child: const Text(
          'TRAILER',
          style: TextStyle(
            color: Color.fromRGBO(178, 33, 33, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(width: 80),
      ElevatedButton(
        onPressed: () async {
          final url = Uri.parse(links["empresa"] ?? "");
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
        child: const Text(
          'EMPRESA',
          style: TextStyle(
            color: Color.fromRGBO(178, 33, 33, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
  /// Galeria de imagens
  SizedBox _buildGaleria() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: imagensGaleria.length,
        itemBuilder: (context, index) => Image.asset(
          imagensGaleria[index],
          width: 150,
          fit: BoxFit.cover,
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 8),
      ),
    );
  }
}