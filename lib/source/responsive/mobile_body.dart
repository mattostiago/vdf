import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/screens/menu_drawer.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyMobileBody extends StatelessWidget {
  MyMobileBody({Key? key}) : super(key: key);

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
    MenuData(Icons.delivery_dining_sharp, 'Atrações'),
    MenuData(Icons.delivery_dining_sharp, 'Nova Friburgo'),
  ];

  final List<String> imgList = [
    'assets/pousada/por-do-sol.jpg',
    'assets/pousada/por-do-sol-2.jpg',
    'assets/pousada/por-do-sol-3.jpg',
  ];

  List boxes = ["ACOMODAÇÕES", "A POUSADA", "NOVAFRIBURGO", "PROMOÇÕES"];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/logo-med.png",
          scale: 2,
        ),
        centerTitle: true,
        elevation: 10,
        //backgroundColor: Colors.cyan[900],
        shadowColor: Colors.cyan[900],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(100),
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
                  ImageSlideshow(
                    indicatorColor: Colors.blue,
                    onPageChanged: (value) {
                      //debugPrint('Page changed: $value');
                    },
                    height: 350,
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
                            mainAxisSpacing: 1.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Color.fromARGB(255, 98, 152, 55),
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
                        ),
                      );
                    },
                  ),
                  Center(
                    child: ElevatedButton(
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                  ),
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
