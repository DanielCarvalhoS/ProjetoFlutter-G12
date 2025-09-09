class Jogo {
  final String titulo;
  final String imagemPrincipal;
  final String sinopse;
  final Map<String, dynamic> info;
  final List<String> imagensGaleria;
  final Map<String, String> links;

  Jogo({
    required this.titulo,
    required this.imagemPrincipal,
    required this.sinopse,
    required this.info,
    required this.imagensGaleria,
    required this.links,
  });

  /// Cria objeto a partir de JSON
  factory Jogo.fromJson(Map<String, dynamic> json) {
    return Jogo(
      titulo: json['titulo'],
      imagemPrincipal: json['imagemPrincipal'],
      sinopse: json['sinopse'],
      info: Map<String, dynamic>.from(json['info']),
      imagensGaleria: List<String>.from(json['imagensGaleria']),
      links: Map<String, String>.from(json['links']),
    );
  }

  /// Converte o objeto novamente em JSON
  Map<String, dynamic> toJson() {
    return {
      "titulo": titulo,
      "imagemPrincipal": imagemPrincipal,
      "sinopse": sinopse,
      "info": info,
      "imagensGaleria": imagensGaleria,
      "links": links,
    };
  }

  /// Retorna o campo info já convertido em Map<String, String>
  Map<String, String> getInfoAsString() {
    return info.map((k, v) =>
        MapEntry(k, v is List ? v.join(", ") : v.toString()));
  }

  /// Recupera um link específico (ex: trailer ou empresa)
  String? getLink(String chave) {
    return links[chave];
  }
}