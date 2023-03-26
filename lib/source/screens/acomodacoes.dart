import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/models/acomodacao.dart';
import 'package:vdf/source/models/menu_acomodacoes.dart';
import 'package:vdf/source/responsive/dimensions.dart';
import 'package:vdf/source/screens/detalhes_acomodacao.dart';
import 'package:vdf/source/utils/constants.dart';

class Acomodacoes extends StatefulWidget {
  const Acomodacoes({super.key});

  @override
  State<Acomodacoes> createState() => _AcomodacoesState();
}

class _AcomodacoesState extends State<Acomodacoes> {
  Botoes botao = Botoes();
  Dados dados = Dados();
  bool progress = true;

  @override
  Widget build(BuildContext context) {
    List<Acomodacao> acomodacoes = dados.pegarAcomodacoes();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const TextRenderer(
          style: TextRendererStyle.header1,
          child: Text(
            "Acomodações",
          ),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: corPrimaria,
      ),
      floatingActionButton: botao.retornaBotaoFlutuanteWhatsApp(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 55),
                  //LinearProgressIndicator(),
                  const SizedBox(height: 15),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: acomodacoes.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 4 / 3,
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 1.0,
                      mainAxisExtent: 180,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return LinkRenderer(
                        text: acomodacoes[index].nome,
                        href: urlSite + "acomodacoes" + acomodacoes[index].nome,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10.0,
                          margin: const EdgeInsets.all(10.0),
                          child: InkWell(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image: AssetImage(acomodacoes[index]
                                            .imagens[0]
                                            .imagem),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextRenderer(
                                        style: TextRendererStyle.paragraph,
                                        child: Text(
                                          acomodacoes[index].nome,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      TextRenderer(
                                        style: TextRendererStyle.paragraph,
                                        child: Text(
                                          acomodacoes[index].descricaoCurta!,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetalhesAcomodacao(
                                      acomodacao: acomodacoes[index])));
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  const TextRenderer(
                    style: TextRendererStyle.paragraph,
                    child: Text(
                      'Com diversas categorias diferentes, temos acomodações confortáveis e com um visual incrível para as montanhas de Nova Friburgo. Escolha a sua e desfrute de momentos mágicos.',
                      style: TextStyle(color: Colors.transparent),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
