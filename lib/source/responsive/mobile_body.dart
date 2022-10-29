import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/screens/acomodacoes.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
    MenuData(Icons.room_service_sharp, 'Serviços'),
    MenuData(Icons.local_attraction, 'Nova Friburgo'),
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
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Image.asset(
                      'assets/pousada/por-do-sol-3.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
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
                        color: corPadrao,
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
                          color: corPadrao,
                          elevation: 0.9,
                          child: InkWell(
                            //borderRadius: BorderRadius.all(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ImageSlideshow(
                                  indicatorColor: corPadrao,
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
                        width: MediaQuery.of(context).size.width * 0.4,
                        //   height: 100,
                        // color: Colors.green,
                        child: Card(
                          color: corPadrao,
                          elevation: 0.9,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ImageSlideshow(
                                  indicatorColor: Colors.blue,
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
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: corPadrao,
                        // image: const DecorationImage(image: AssetImage('assets/pousada/por-do-sol-3.jpg')),
                        // borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4, right: 4, top: 4, bottom: 8),
                            child: Container(
                              //  height: MediaQuery.of(context).size.height * 0.1,
                              // width: MediaQuery.of(context).size.width,
                              // color: Colors.amber,

                              child: SizedBox(
                                // height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Center(
                                        child: Text(
                                          "Consultar Disponibilidade",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      SizedBox(
                                        //width: 200,
                                        child: Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              pickDateRange();
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                            ),
                                            child: Text(
                                              data,
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
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
