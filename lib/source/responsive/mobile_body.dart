import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:vdf/source/screens/acomodacoes.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_map/plugin_api.dart'; // Only import if required functionality is not exposed by default

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
/*
  final List<String> imgList = [
    //'https://www.valedasflores.com/app/cafe.jpg',
    'https://www.valedasflores.com/app/a2.jpg',
    'https://www.valedasflores.com/app/lotus.jpg',
    'https://www.valedasflores.com/app/qu.jpg',
    // 'https://www.valedasflores.com/app/quarto.jpg'
  ];
  */
  int _currentIndex = 0;

  final List<MenuData> menu = [
    MenuData(Icons.hotel, 'Acomodações'),
    MenuData(Icons.photo, 'Fotos'),
    MenuData(Icons.local_attraction, 'A Pousada'),
    MenuData(Icons.discount, 'Promoções'),
  ];

  final List<String> imgList = [
    'assets/pousada/por-do-sol.jpg',
    'assets/pousada/por-do-sol-2.jpg',
    'assets/pousada/por-do-sol-3.jpg',
  ];

  List boxes = ["ACOMODAÇÕES", "A POUSADA", "NOVAFRIBURGO", "PROMOÇÕES"];

  DateTime now = DateTime.now();
  String data = "Data";

  DateTimeRange dateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 1));
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;

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
        centerTitle: true,
        //backgroundColor: Colors.cyan[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          //side: BorderSide(width: 3.0, color: Colors.orange),
        ),
      ),
      //backgroundColor: corTerciaria,
      // drawer: const MenuDrawer(),
      /* bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  MaterialLocalizations.of(context).openAppDrawerTooltip;
                }),
            const Spacer(),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.whatsapp),
          onPressed: () {
            launchUrl(
                Uri.parse('https://api.whatsapp.com/send?phone=5522997886941'));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pousada/por-do-sol-3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(8),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.calendar_today_rounded,
                            ),
                            label: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("Reservar agora"),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  // Change your radius here
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        /*
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              pickDateRange();
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            child: Text(
                              data,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),*/
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
                                builder: (context) => Acomodacoes()));
                          },
                        ),
                      );
                    },
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                        color: Colors.black87,
                        padding: EdgeInsets.only(left: 12, right: 75),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/Logo-v-160.png",
                                  scale: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Pousada Vale das Flores",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                "Telefone: (22) 9 9788-6941\nEmail: contato@valedasflores.com\nRua Jacir Linhares Ramos, nº 224\nBraunes - Nova Friburgo - RJ, Brasil",
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

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(2022),
      lastDate: DateTime(2100),
    );

    if (newDateRange == null) return;
    setState(() {
      dateRange = newDateRange;
      data =
          "${dateRange.start.day}/${dateRange.start.month} a ${dateRange.end.day}/${dateRange.end.month}";
    });
  }
}

class MenuData {
  MenuData(this.icon, this.title);
  final IconData icon;
  final String title;
}
