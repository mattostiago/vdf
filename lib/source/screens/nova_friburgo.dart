import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:lottie/lottie.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/components/modal.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;

class NovaFriburgo extends StatefulWidget {
  const NovaFriburgo({super.key});

  @override
  State<NovaFriburgo> createState() => _NovaFriburgoState();
}

class _NovaFriburgoState extends State<NovaFriburgo> {
  Dados dados = Dados();
  Modal modal = Modal();
  Botoes botao = Botoes();

  final Uri _url = Uri.parse(
      'https://www.google.com/maps/place/Pousada+Vale+das+Flores/@-22.2846187,-42.515241,17z/data=!3m1!4b1!4m8!3m7!1s0x978ae3ff627ffb:0xbcf22390017c4b4c!5m2!4m1!1i2!8m2!3d-22.2846236!4d-42.5151785');

  final List<MenuData> menu = [
    MenuData("assets/pousada/jogos.jpg", 'Jogos', NovaFriburgo(), "jogos"),
    MenuData(
        "assets/pousada/cafe-1.jpg", 'Café', NovaFriburgo(), "cafe-da-manha"),
    MenuData("assets/pousada/fachada.jpg", 'Deck', NovaFriburgo(), "pousada"),
  ];

  final List<MenuData2> menu2 = [
    MenuData2(Icons.travel_explore, 'Pontos Turísticos',
        '/nova-friburgo/pontos-turisticos', 'pontos-turisticos'),
    MenuData2(Icons.restaurant, 'Onde Comer', '/nova-friburgo/onde-comer',
        'onde-comer'),
    MenuData2(Icons.star, 'Atrativos', '/nova-friburgo/atrativos', 'atrativos'),
  ];

  void initState() {
    super.initState();
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'pontos-turisticos',
        (int viewId) => html.IFrameElement()
          ..width = '400'
          ..height = '900'
          ..src = 'https://descubranovafriburgo.com.br/pontos-turisticos/'
          ..style.border = 'none');
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'onde-comer',
        (int viewId) => html.IFrameElement()
          ..width = '400'
          ..height = '900'
          ..src = 'https://descubranovafriburgo.com.br/onde-comer/'
          ..style.border = 'none');
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'atrativos',
        (int viewId) => html.IFrameElement()
          ..width = '400'
          ..height = '900'
          ..src = 'https://descubranovafriburgo.com.br/o-que-fazer/'
          ..style.border = 'none');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const TextRenderer(
          style: TextRendererStyle.header1,
          child: Text("Nova Friburgo"),
        ),
        backgroundColor: Color(0xffb35bacc),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: botao.retornaBotaoFlutuanteWhatsApp(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      LinearProgressIndicator(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: const HtmlElementView(
                              viewType: 'pontos-turisticos')),
                      Container(
                        color: Color(0xffb35bacc),
                        //height: MediaQuery.of(context).size.height,
                        //  width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: menu2.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 4 / 3,
                            crossAxisCount: 3,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 1.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            //LinkRederer para SEO
                            return LinkRenderer(
                              text: menu2[index].title,
                              href: urlSite,
                              child: Card(
                                //  color: const Color.fromARGB(255, 98, 152, 55),
                                color: cor3,
                                elevation: 0.9,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        menu2[index].icon,
                                        size: 25,
                                        color: Colors.white70,
                                      ),
                                      //SizedBox(height: 20),
                                      Text(
                                        menu2[index].title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    //Navigator.pushNamed(context, menu2[index].urlExtensao);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

class MenuData {
  MenuData(this.imagem, this.title, this.destino, this.urlDestino);
  final String imagem;
  final String title;
  final destino;
  final String urlDestino;
}

class MenuData2 {
  MenuData2(this.icon, this.title, this.urlExtensao, this.destino);
  final IconData icon;
  final String title;
  final String urlExtensao;
  final destino;
}
