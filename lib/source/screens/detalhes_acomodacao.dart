import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/components/caixa_dialogo.dart';
import 'package:vdf/source/components/modal.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/models/acomodacao.dart';
import 'package:vdf/source/utils/constants.dart';

class DetalhesAcomodacao extends StatelessWidget {
  DetalhesAcomodacao({super.key, required this.acomodacao});

  final Acomodacao acomodacao;
  CaixaDialogo caixa = CaixaDialogo();

  Modal modal = Modal();
  Botoes botao = Botoes();
  Dados dados = Dados();

  @override
  Widget build(BuildContext context) {
    List<Acomodacao> acomodacoes = dados.pegarAcomodacoes();
    List<Widget> retornaAmenidades() {
      List<Widget> arrayWidgetsAmenidades = [];
      for (int i = 0; i < acomodacao.amenidades.length; i++) {
        arrayWidgetsAmenidades.add(
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: ClipOval(
              child: Material(
                shape:
                    const CircleBorder(side: BorderSide(color: Colors.black54)),
                child: InkWell(
                  splashColor: Colors.black45, // Splash color
                  onTap: () {
                    modal.chamaModalAmenidades2(
                        context, acomodacao.amenidades[i]);
                  },
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Icon(
                      acomodacao.amenidades[i].icone,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
      return arrayWidgetsAmenidades;
    }

    List<Widget> retornaImagens() {
      List<Widget> arrayWidgetsImagens = [];
      for (int i = 0; i < acomodacao.imagens.length; i++) {
        arrayWidgetsImagens.add(
          Image.asset(
            acomodacao.imagens[i].imagem,
            fit: BoxFit.cover,
          ),
        );
      }
      return arrayWidgetsImagens;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.black54,
        //backgroundColor: Colors.black,
        title: Text(
          acomodacao.nome,
          //style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 8, //sombra
      ),
      floatingActionButton: botao.retornaBotaoFlutuanteWhatsApp(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          ImageSlideshow(
            indicatorColor: cor1,
            onPageChanged: (value) {
              //debugPrint('Page changed: $value');
            },
            height: MediaQuery.of(context).size.height * 0.6,
            indicatorRadius: 2,
            autoPlayInterval: 3000,
            isLoop: true,
            children: retornaImagens(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      top: 12,
                      bottom: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Descrição",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: InkWell(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(Icons.star_purple500_sharp,
                                    color: Colors.amber),
                                Icon(Icons.star_purple500_sharp,
                                    color: Colors.amber),
                                Icon(Icons.star_purple500_sharp,
                                    color: Colors.amber),
                                Icon(Icons.star_purple500_sharp,
                                    color: Colors.amber),
                                Icon(Icons.star_half_sharp,
                                    color: Colors.amber),
                                //Text(  "Avaliações", textAlign: TextAlign.center, ),
                              ],
                            ),
                            onTap: () {
                              modal.chamaModal(
                                context,
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Avaliações",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(Icons.star_purple500_sharp,
                                            color: Colors.amber),
                                        Icon(Icons.star_purple500_sharp,
                                            color: Colors.amber),
                                        Icon(Icons.star_purple500_sharp,
                                            color: Colors.amber),
                                        Icon(Icons.star_purple500_sharp,
                                            color: Colors.amber),
                                        Icon(Icons.star_half_sharp,
                                            color: Colors.amber),
                                        //Text(  "Avaliações", textAlign: TextAlign.center, ),
                                      ],
                                    ),
                                    const SizedBox(height: 50),
                                    const Text(
                                        "Veja o que os hóspedes estão falando dessa acomodação.\n\n\n\n\n"),
                                  ],
                                ),
                              );
                              // caixa.caixaSimplesTituloEMensagem( context,   "Avaliações",  "Confira o que os hóspedes estão falando dessa acomodação.");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      bottom: 12,
                      right: 12,
                    ),
                    child: Container(
                      child: Text(
                        acomodacao.descricao,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ),
                  botao.botaoReservarAgora(context),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      bottom: 8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        acomodacao.amenidades.isNotEmpty
                            ? const Text(
                                "AMENIDADES",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              )
                            : const Center(),
                      ],
                    ),
                  ),
                  acomodacao.amenidades.isNotEmpty
                      ? Row(children: retornaAmenidades())
                      : const Center(),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                        color: Colors.black54,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "Outras acomodações",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            GridView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: acomodacoes.length > 1
                                  ? 2
                                  : acomodacoes.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                // childAspectRatio: 1,
                                crossAxisCount: 2,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 1.0,
                                mainAxisExtent: 180,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                int tam = acomodacoes.length - 1;
                                Widget temporario;
                                acomodacoes[index].nome != acomodacao.nome &&
                                        index < 4
                                    ? temporario = Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        elevation: 10.0,
                                        margin: const EdgeInsets.all(10.0),
                                        child: InkWell(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          acomodacoes[index]
                                                              .imagens[0]
                                                              .imagem),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      acomodacoes[index].nome,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                          color:
                                                              Colors.redAccent,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                    Text(
                                                      acomodacoes[index]
                                                          .descricaoCurta!,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetalhesAcomodacao(
                                                            acomodacao:
                                                                acomodacoes[
                                                                    index])));
                                          },
                                        ),
                                      )
                                    : temporario = Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        elevation: 10.0,
                                        margin: const EdgeInsets.all(10.0),
                                        child: InkWell(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          acomodacoes[tam]
                                                              .imagens[0]
                                                              .imagem),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      acomodacoes[tam].nome,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                          color:
                                                              Colors.redAccent,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    ),
                                                    Text(
                                                      acomodacoes[tam]
                                                          .descricaoCurta!,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetalhesAcomodacao(
                                                            acomodacao:
                                                                acomodacoes[
                                                                    tam])));
                                          },
                                        ),
                                      );
                                return temporario;
                              },
                            ),
                            const SizedBox(height: 50),
                          ],
                        )),
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
