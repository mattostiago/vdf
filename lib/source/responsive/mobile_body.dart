import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/components/modal.dart';
import 'package:vdf/source/components/reservar.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/screens/acomodacoes.dart';
import 'package:vdf/source/screens/cafe_da_manha.dart';
import 'package:vdf/source/screens/fotos.dart';
import 'package:vdf/source/screens/jogos.dart';
import 'package:vdf/source/screens/nova_friburgo.dart';
import 'package:vdf/source/screens/pousada.dart';
import 'package:vdf/source/screens/promocoes.dart';
import 'package:vdf/source/utils/constants.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  Dados dados = Dados();
  final List<MenuData> menu = [
    MenuData(Icons.hotel, 'Acomodações', Acomodacoes()),
    MenuData(Icons.photo, 'Fotos', Fotos()),
    MenuData(Icons.local_attraction, 'A Pousada', Pousada()),
    MenuData(Icons.discount, 'Promoções', Promocoes()),
  ];

  final List<String> imgList = [
    'assets/pousada/por-do-sol.jpg',
    'assets/pousada/por-do-sol-2.jpg',
    'assets/pousada/por-do-sol-3.jpg',
  ];
  Modal modal = Modal();
  Botoes botao = Botoes();
  Reservar reservar = Reservar();
  List boxes = ["ACOMODAÇÕES", "A POUSADA", "NOVAFRIBURGO", "PROMOÇÕES"];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: InkWell(
          child: Image.asset(
            "assets/logo-med.png",
            scale: 2.2,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyMobileBody()));
          },
        ),
        actions: [],
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      ),
      floatingActionButton: botao.retornaBotaoFlutuanteWhatsApp(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(dados.background.imagem),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: (MediaQuery.of(context).size.height * 0.6) + 25,
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 3,
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/pousada/vista2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            //child:
                          ),
                          Container(
                            alignment: AlignmentDirectional.bottomCenter,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  padding: const EdgeInsets.all(8),
                                  child: botao
                                      .retornaBotaoConsultarTarifas(context),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: menu.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 4 / 3,
                        crossAxisCount: 4,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 1.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          //  color: const Color.fromARGB(255, 98, 152, 55),
                          color: cor3,
                          elevation: 0.9,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  menu[index].icon,
                                  size: 25,
                                  color: Colors.white70,
                                ),
                                //SizedBox(height: 20),
                                Text(
                                  menu[index].title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.white),
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => menu[index].destino));
                            },
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: cor5,
                        elevation: 0.9,
                        child: InkWell(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              ImageSlideshow(
                                indicatorColor: cor1,
                                onPageChanged: (value) {
                                  //debugPrint('Page changed: $value');
                                },
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                indicatorRadius: 3,
                                autoPlayInterval: 5000,
                                isLoop: true,
                                children: [
                                  InkWell(
                                    child: Hero(
                                      tag: 'assets/pousada/cidade.jpg',
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            'assets/pousada/cidade.jpg',
                                            fit: BoxFit.cover,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            alignment:
                                                AlignmentDirectional.topStart,
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                // color: Colors.lime,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(8),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(4),
                                              child: const Text(
                                                "Nova Friburgo",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    shadows: [
                                                      Shadow(
                                                        blurRadius: 10,
                                                      )
                                                    ]),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            alignment:
                                                AlignmentDirectional.topEnd,
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                // color: Colors.lime,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(8),
                                                ),
                                              ),
                                              padding: const EdgeInsets.all(4),
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                  ),
                                                ),
                                                child: const Text("+ Ver mais"),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const NovaFriburgo()));
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  NovaFriburgo()));
                                    },
                                  ),
                                  InkWell(
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/pousada/jogos.jpg',
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                        ),
                                        Container(
                                            padding: const EdgeInsets.all(8),
                                            alignment:
                                                AlignmentDirectional.topStart,
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                // color: Colors.lime,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(8),
                                                  //bottomLeft: Radius.circular(20),
                                                ),
                                                // boxShadow: [   BoxShadow(blurRadius: 10)],
                                              ),
                                              padding: const EdgeInsets.all(4),
                                              child: const Text(
                                                "Jogos",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    shadows: [
                                                      Shadow(
                                                        blurRadius: 10,
                                                      )
                                                    ]),
                                              ),
                                            )),
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          alignment:
                                              AlignmentDirectional.topEnd,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              // color: Colors.lime,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            padding: const EdgeInsets.all(4),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                ),
                                              ),
                                              child: const Text("+ Ver mais"),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Jogos()));
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Jogos()));
                                    },
                                  ),
                                  InkWell(
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/pousada/cafe-2.jpg',
                                          fit: BoxFit.cover,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          alignment:
                                              AlignmentDirectional.topStart,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              //  color: Colors.lime,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                                //bottomLeft: Radius.circular(20),
                                              ),
                                              //boxShadow: [BoxShadow(blurRadius: 10)  ],
                                            ),
                                            padding: const EdgeInsets.all(4),
                                            child: const Text(
                                              "Café da manhã ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          alignment:
                                              AlignmentDirectional.topEnd,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              // color: Colors.lime,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                            ),
                                            padding: const EdgeInsets.all(4),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                ),
                                              ),
                                              child: const Text("+ Ver mais"),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CafeDaManha()));
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CafeDaManha()));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //onTap: () {  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fotos())); },
                        ),
                      ),
                    ),
                    /*
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        //height: 100,
                        //color: Colors.amber,

                        child: Card(
                          // color: const Color.fromARGB(255, 98, 152, 55),
                          color: cor5,
                          elevation: 0.9,
                          child: InkWell(
                            //borderRadius: BorderRadius.all(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ImageSlideshow(
                                  indicatorColor: cor1,
                                  onPageChanged: (value) {
                                    //debugPrint('Page changed: $value');
                                  },
                                  height: 100,
                                  indicatorRadius: 3,
                                  autoPlayInterval: 4000,
                                  isLoop: true,
                                  children: [
                                    Image.asset(
                                      'assets/pousada/cafe-3.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                    InkWell(
                                      child: Image.asset(
                                        'assets/pousada/cafe-1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text("Cancelamento"),
                                              content: const Text("mensagem"),
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
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Acomodacoes()));
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Card(
                          color: cor3,
                          elevation: 0.9,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.tour_outlined,
                                  size: 25,
                                  color: Colors.white70,
                                ),
                                //SizedBox(height: 20),
                                Text(
                                  "Nova Friburgo",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Acomodacoes()));
                            },
                          ),
                        ),
                      ),

                      /*
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        //   height: 100,
                        // color: Colors.green,
                        child: Card(
                          color: cor1,
                          elevation: 0.9,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ImageSlideshow(
                                  indicatorColor: cor1,
                                  onPageChanged: (value) {
                                    //debugPrint('Page changed: $value');
                                  },
                                  height: 100,
                                  indicatorRadius: 2,
                                  autoPlayInterval: 4000,
                                  isLoop: true,
                                  children: [
                                    InkWell(
                                      child: Image.asset(
                                        'assets/pousada/jogos.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text("Cancelamento"),
                                              content: const Text("mensagem"),
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
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Acomodacoes(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                  */
                    ],
                  ),
                  
                  */
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                          color: Colors.black87,
                          padding: const EdgeInsets.only(
                              left: 12, right: 75, top: 15),
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
      ),
    );
  }
}

class MenuData {
  MenuData(this.icon, this.title, this.destino);
  final IconData icon;
  final String title;
  final destino;
}
