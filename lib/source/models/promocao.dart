import 'package:vdf/source/models/imagem.dart';

class Promocao {
  Promocao(
    this.nome,
    this.descricao,
    this.descricaoCurta,
    this.imagens,
  );
  final String nome;
  final String descricao;
  final String? descricaoCurta;
  final List<Imagem> imagens;
}
