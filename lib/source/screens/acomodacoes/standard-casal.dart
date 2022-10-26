import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class StandardCasal extends StatefulWidget {
  StandardCasal({Key? key}) : super(key: key);

  @override
  State<StandardCasal> createState() => _StandardCasalState();
}

class _StandardCasalState extends State<StandardCasal> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        //backgroundColor: Colors.black,
        title: const Text(
          "Standard Casal",
          //style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 98, 152, 55),
        //backgroundColor: Colors.cyan[900],
      ),
      body: Column(
        children: [
          ImageSlideshow(
            indicatorColor: Colors.blue,
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
                        Spacer(),
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
                              retornaDialog(context, "Avaliações",
                                  "Confira o que os hóspedes estão falando dessa acomodação.");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  /*  Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "DESCRIÇÃO",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),*/
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
                                retornaDialog(context, "TV",
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
                                retornaDialog(context, "Ventilador",
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
                      /*
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ClipOval(
                  child: Material(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.black54)),
                    child: InkWell(
                      splashColor: Colors.black45, // Splash color
                      onTap: () {
                        retornaDialog(context, "TV",
                            "O Standard Casal conta com TV LCD.");
                      },
                      child: const SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.air,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ),*/
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ClipOval(
                          child: Material(
                            shape: const CircleBorder(
                                side: BorderSide(color: Colors.black54)),
                            child: InkWell(
                              splashColor: Colors.black45, // Splash color
                              onTap: () {
                                retornaDialog(context, "Banheiro privativo",
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
                                retornaDialog(context, "Wi-Fi",
                                    "Wi-Fi grátis disponível.");
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
                    padding: EdgeInsets.only(
                      top: 12,
                    ),
                    child: Container(
                      color: Colors.black12,
                      height: 120,
                    ),
                  ),
                  // Generated code for this bottomButtonArea Widget...
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void retornaDialog(BuildContext context, String title, String conteudo) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(conteudo),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
