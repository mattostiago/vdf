import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/models/promocao.dart';
import 'package:vdf/source/screens/detalhes_promocao.dart';
import 'package:vdf/source/utils/constants.dart';

class Promocoes extends StatefulWidget {
  const Promocoes({super.key});

  @override
  State<Promocoes> createState() => _PromocoesState();
}

class _PromocoesState extends State<Promocoes> {
  Dados dados = Dados();
  @override
  Widget build(BuildContext context) {
    List<Promocao> promocoes = dados.pegarPromocoes();
    return Scaffold(
      appBar: AppBar(
        title: const TextRenderer(
            style: TextRendererStyle.header1, child: Text("Promoções")),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: promocoes.length,
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
                        text: promocoes[index].nome,
                        href: urlSite + promocoes[index].urlDestino,
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
                                        image: AssetImage(
                                            promocoes[index].imagens[0].imagem),
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
                                        style: TextRendererStyle.header1,
                                        child: Text(
                                          promocoes[index].nome,
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
                                          promocoes[index].descricaoCurta!,
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
                                  builder: (context) => DetalhesPromocao(
                                      promocao: promocoes[index])));
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  const TextRenderer(
                    style: TextRendererStyle.paragraph,
                    child: Text(
                      'Promoções para você curtir o melhor de Nova Friburgo em uma Pousada confortável e com uma vista formidável.',
                      style: TextStyle(color: Colors.transparent),
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
