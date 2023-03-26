import 'package:vdf/source/models/imagem.dart';

class Promocao {
  Promocao(
    this.nome,
    this.descricao,
    this.descricaoCurta,
    this.imagens,
    this.urlDestino,
  );
  final String nome;
  final String descricao;
  final String? descricaoCurta;
  final List<Imagem> imagens;
  final String urlDestino;
}
