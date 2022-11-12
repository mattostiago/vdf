import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/components/caixa_dialogo.dart';
import 'package:vdf/source/components/modal.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/models/acomodacao.dart';
import 'package:vdf/source/models/promocao.dart';
import 'package:vdf/source/utils/constants.dart';

class DetalhesPromocao extends StatelessWidget {
  DetalhesPromocao({super.key, required this.promocao});

  final Promocao promocao;
  CaixaDialogo caixa = CaixaDialogo();

  Modal modal = Modal();
  Botoes botao = Botoes();
  Dados dados = Dados();

  @override
  Widget build(BuildContext context) {
    List<Promocao> promocoes = dados.pegarPromocoes();

    List<Widget> retornaImagens() {
      List<Widget> arrayWidgetsImagens = [];
      for (int i = 0; i < promocao.imagens.length; i++) {
        arrayWidgetsImagens.add(
          Image.asset(
            promocao.imagens[i].imagem,
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
          promocao.nome,
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
            height: MediaQuery.of(context).size.height * 0.55,
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
                      children: const [
                        Text(
                          "Descrição",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        Spacer(),
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
                        promocao.descricao,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
