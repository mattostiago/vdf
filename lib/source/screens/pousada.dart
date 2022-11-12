import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/utils/constants.dart';

class Pousada extends StatefulWidget {
  const Pousada({super.key});

  @override
  State<Pousada> createState() => _PousadaState();
}

class _PousadaState extends State<Pousada> {
  Dados dados = Dados();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("A Pousada"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 8, //sombra
      ),
      body: Column(
        children: [
          ImageSlideshow(
              indicatorColor: cor1,
              onPageChanged: (value) {
                //debugPrint('Page changed: $value');
              },
              height: MediaQuery.of(context).size.height * 0.4,
              indicatorRadius: 2,
              autoPlayInterval: 3000,
              isLoop: true,
              children: dados.pegarSlideSobre()),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      dados.tituloSobre,
                      style: const TextStyle(
                          fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      dados.descricaoSobre,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
