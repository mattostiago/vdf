import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/screens/acomodacoes.dart';
import 'package:vdf/source/screens/menu_drawer.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        backgroundColor: Colors.white,
        title: InkWell(
          child: Image.asset(
            "assets/logo-med.png",
            scale: 2,
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyMobileBody()));
          },
        ),
        centerTitle: true,
        elevation: 10,
        //backgroundColor: Colors.cyan[900],
        shadowColor: Colors.cyan[900],
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
          child: const Icon(Icons.calendar_today_rounded), onPressed: () {}),
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
                  Container(
                    //  height: MediaQuery.of(context).size.height * 0.1,
                    // width: MediaQuery.of(context).size.width,
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      // image: const DecorationImage(image: AssetImage('assets/pousada/por-do-sol-3.jpg')),
                      border: Border.all(
                          color: const Color(0xFF000000),
                          width: 4.0,
                          style: BorderStyle.solid), //Border.all
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  pickDateRange();
                                },
                                child: Text(
                                  "Check-in: ${start.day}/${start.month}/${start.year}\nCheck-out: ${end.day}/${end.month}/${end.year}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                  /*
                  ImageSlideshow(
                    indicatorColor: Colors.blue,
                    onPageChanged: (value) {
                      //debugPrint('Page changed: $value');
                    },
                    height: 420,
                    indicatorRadius: 2,
                    autoPlayInterval: 3000,
                    isLoop: true,
                    children: [
                      Image.asset(
                        'assets/pousada/fachada.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/pousada/por-do-sol.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/pousada/sala2.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/pousada/por-do-sol-2.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/pousada/jogos.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/pousada/por-do-sol-3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  */
                  /*
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        height: 250,
                        //color: corPrimaria,
                        child: Column(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(),
                              items: imgList
                                  .map((item) => Container(
                                        child: Center(
                                            child: Image.asset(item,
                                                fit: BoxFit.cover,
                                                width: 1000)),
                                      ))
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ),*/
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
                        color: const Color.fromARGB(255, 98, 152, 55),
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
                          color: const Color.fromARGB(255, 98, 152, 55),
                          elevation: 0.9,
                          child: InkWell(
                            //borderRadius: BorderRadius.all(),
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
                          color: const Color.fromARGB(255, 98, 152, 55),
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Acomodacoes()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text("Teste"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          // setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Inicial',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Acomodações',
            icon: Icon(Icons.meeting_room),
          ),
          BottomNavigationBarItem(
            label: 'Atrações',
            icon: Icon(Icons.room_service_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Mais',
            icon: Icon(Icons.more_vert_sharp),
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
    setState(() => dateRange = newDateRange);
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
  );
}

class MenuData {
  MenuData(this.icon, this.title);
  final IconData icon;
  final String title;
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption?.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
