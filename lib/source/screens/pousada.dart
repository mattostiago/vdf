import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdf/source/components/modal.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/utils/constants.dart';

class Pousada extends StatefulWidget {
  const Pousada({super.key});

  @override
  State<Pousada> createState() => _PousadaState();
}

class _PousadaState extends State<Pousada> {
  Dados dados = Dados();
  Modal modal = Modal();

  final Uri _url = Uri.parse(
      'https://www.google.com/maps/place/Pousada+Vale+das+Flores/@-22.2846187,-42.515241,17z/data=!3m1!4b1!4m8!3m7!1s0x978ae3ff627ffb:0xbcf22390017c4b4c!5m2!4m1!1i2!8m2!3d-22.2846236!4d-42.5151785');

  final List<MenuData> menu = [
    MenuData("assets/pousada/jogos.jpg", 'Jogos', Pousada()),
    MenuData("assets/pousada/cafe-1.jpg", 'Café', Pousada()),
    MenuData("assets/pousada/fachada.jpg", 'Deck', Pousada()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("A Pousada"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              child: ImageSlideshow(
                                  indicatorColor: cor1,
                                  onPageChanged: (value) {
                                    //debugPrint('Page changed: $value');
                                  },
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  indicatorRadius: 2,
                                  autoPlayInterval: 3000,
                                  isLoop: true,
                                  children: dados.pegarSlideSobre()),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                          color: cor3,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 5.0),
                                blurRadius: 6)
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              // height: 100,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  /*
                                  Container(
                                    padding:
                                        const EdgeInsets.only(left: 4, top: 15),
                                    child: Image.asset(
                                      "assets/Logo-v-160.png",
                                      scale: 8,
                                    ),
                                  ),*/
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      dados.tituloSobre,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    color: cor3,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: menu.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4,
                        mainAxisExtent: 128,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10.0,
                          child: InkWell(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: [
                                    Container(
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                          image: AssetImage(menu[index].imagem),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 120.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.black26),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      child: Text(
                                        menu[index].title,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            shadows: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  spreadRadius: 10,
                                                  blurRadius: 1)
                                            ]),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            onTap: () {
                              modal.chamaModal(
                                  context,
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: Center(
                                        child: Text("Mais informações aqui.")),
                                  ));
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    //   color: Colors.blueAccent,
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      dados.descricaoSobre,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      child: Image.asset(dados.maps.imagem),
                    ),
                    onTap: () => _launchUrl(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                        color: Colors.black87,
                        padding:
                            const EdgeInsets.only(left: 12, right: 75, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/Logo-v-160.png",
                                  scale: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Pousada Vale das Flores",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: //Text("Telefone: (22) 9 9788-6941\nEmail: contato@valedasflores.com\nRua Jacir Linhares Ramos, nº 224\nBraunes - Nova Friburgo - RJ, Brasil",
                                  Text(
                                "Telefone: (22) 9 9788-6941\nRua Jacir Linhares Ramos, nº 224\nBraunes - Nova Friburgo - RJ, Brasil",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 12,
                                  //fontWeight: FontWeight.w600,
                                  color: Colors.white54,
                                ),
                              ),
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

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}

class MenuData {
  MenuData(this.imagem, this.title, this.destino);
  final String imagem;
  final String title;
  final destino;
}
