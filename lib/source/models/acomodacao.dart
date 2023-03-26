import 'package:vdf/source/models/amenidades.dart';
import 'package:vdf/source/models/imagem.dart';

class Acomodacao {
  Acomodacao(this.nome, this.descricao, this.descricaoCurta, this.imagens,
      this.amenidades, this.capacidade, this.urlDestino);
  final String nome;
  final String descricao;
  final String? descricaoCurta;
  final List<Imagem> imagens;
  final List<Amenidades> amenidades;
  final int capacidade;
  final String urlDestino;
}
