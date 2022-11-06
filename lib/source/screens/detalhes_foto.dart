import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vdf/source/models/imagem.dart';

class DetalhesFoto extends StatelessWidget {
  const DetalhesFoto({super.key, required this.imagem});
  final Imagem imagem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imagem.nome),
      ),
      body: Center(child: Image.asset(imagem.imagem)),
    );
  }
}
