import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/components/caixa_dialogo.dart';
import 'package:vdf/source/models/menu_acomodacoes.dart';
import 'package:vdf/source/screens/acomodacoes/standard-plus.dart';
import 'package:vdf/source/screens/acomodacoes/standard-superior.dart';
import 'package:vdf/source/utils/constants.dart';

class StandardCasal extends StatefulWidget {
  StandardCasal({Key? key}) : super(key: key);
  @override
  State<StandardCasal> createState() => _StandardCasalState();
}

class _StandardCasalState extends State<StandardCasal> {
  CaixaDialogo caixa = CaixaDialogo();
  Botoes botao = Botoes();
  final List<MenuAcomodacoes> menu = [
    MenuAcomodacoes('assets/acomodacoes/standard-plus/azaleia-2.jpg',
        'Standard Plus', 'Descricao', StandardPlus()),
    MenuAcomodacoes('assets/acomodacoes/standard-superior/rosa.jpg',
        'Standard Superior', 'Descricao', StandardSuperior()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.black,
        //backgroundColor: Colors.black,
        title: const Text(
          "Standard Casal",
          //style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        // backgroundColor: corPrimaria,
        backgroundColor: Colors.transparent,
        elevation: 10, //sombra
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.whatsapp),
          onPressed: () {
            launchUrl(Uri.parse(urlWhatsApp));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          ImageSlideshow(
            indicatorColor: cor1,
            onPageChanged: (value) {
              //debugPrint('Page changed: $value');
            },
            height: 300,
            indicatorRadius: 2,
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                'assets/acomodacoes/standard-casal/margarida.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/acomodacoes/standard-plus/azaleia-2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/acomodacoes/standard-superior/begonia.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/acomodacoes/standard-superior/Bouganville.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/acomodacoes/standard-superior/Bromelia.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/acomodacoes/standard-superior/rosa.jpg',
                fit: BoxFit.cover,
              ),
            ],
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
                              caixa.caixaSimplesTituloEMensagem(
                                  context,
                                  "Avaliações",
                                  "Confira o que os hóspedes estão falando dessa acomodação.");
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
                      child: const Text(
                        "A Suíte Standard alia simplicidade e conforto com uma linda vista para o vale da cidade de Nova Friburgo . Possui Tv e está perto de um jardim aonde o hóspede poderá ouvir o canto dos pássaros e sentir a tranquilidade proporcionada pela natureza.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
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
                      children: const [
                        Text(
                          "AMENIDADES",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Material(
                            shape: const CircleBorder(
                                side: BorderSide(color: Colors.black54)),
                            child: InkWell(
                              splashColor: Colors.black45, // Splash color
                              onTap: () {
                                caixa.caixaSimplesTituloEMensagem(context, "TV",
                                    "O Standard Casal conta com TV LCD.");
                              },
                              child: const SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.tv,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Material(
                            shape: const CircleBorder(
                                side: BorderSide(color: Colors.black54)),
                            child: InkWell(
                              splashColor: Colors.black45, // Splash color
                              onTap: () {
                                caixa.caixaSimplesTituloEMensagem(
                                    context,
                                    "Ventilador",
                                    "O Standard Casal conta ventilador.");
                              },
                              child: const SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.wind_power_rounded,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Material(
                            shape: const CircleBorder(
                                side: BorderSide(color: Colors.black54)),
                            child: InkWell(
                              splashColor: Colors.black45, // Splash color
                              onTap: () {
                                caixa.caixaSimplesTituloEMensagem(
                                    context,
                                    "Vista para as Montanhas",
                                    "Da janela do quarto é possível contemplar toda a exuberância das montanhas de Nova Friburgo.");
                              },
                              child: const SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.photo,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Material(
                            shape: const CircleBorder(
                                side: BorderSide(color: Colors.black54)),
                            child: InkWell(
                              splashColor: Colors.black45, // Splash color
                              onTap: () {
                                caixa.caixaSimplesTituloEMensagem(
                                    context,
                                    "Banheiro privativo",
                                    "Banheiro privativo com chuveiro com aquecimento.");
                              },
                              child: const SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.shower,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Material(
                            shape: const CircleBorder(
                                side: BorderSide(color: Colors.black54)),
                            child: InkWell(
                              splashColor: Colors.black45, // Splash color
                              onTap: () {
                                caixa.caixaSimplesTituloEMensagem(context,
                                    "Wi-Fi", "Wi-Fi grátis disponível.");
                              },
                              child: const SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.wifi,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                              itemCount: menu.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                // childAspectRatio: 1,
                                crossAxisCount: 2,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 1.0,
                                mainAxisExtent: 180,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
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
                                                BorderRadius.circular(5.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    menu[index].image),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                menu[index].title,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    color: Colors.redAccent,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                menu[index].description,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
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
                                                  menu[index].classe));
                                    },
                                  ),
                                );
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
