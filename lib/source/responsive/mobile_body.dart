import 'package:flutter/material.dart';
import 'package:vdf/source/screens/menu_drawer.dart';
import 'package:vdf/source/utils/constants.dart';

class MyMobileBody extends StatelessWidget {
  MyMobileBody({Key? key}) : super(key: key);

  final List<String> imgList = [
    //'https://www.valedasflores.com/app/cafe.jpg',
    'https://www.valedasflores.com/app/a2.jpg',
    'https://www.valedasflores.com/app/lotus.jpg',
    'https://www.valedasflores.com/app/qu.jpg',
    // 'https://www.valedasflores.com/app/quarto.jpg'
  ];

  List boxes = ["ACOMODAÇÕES", "A POUSADA", "NOVAFRIBURGO", "PROMOÇÕES"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corTerciaria,
      drawer: const MenuDrawer(),
      bottomNavigationBar: BottomAppBar(
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
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: corPrimaria,
        title: const Text(tituloGlobal),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              height: 250,
              color: corPrimaria,
              child: Column(
                children: [],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              //padding: const EdgeInsets.all(15),
              child: Wrap(
                children: boxes.map((box) {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    color: corSecundaria,
                    alignment: Alignment.center,
                    height: 130,
                    width: 130,
                    child: Text(box),
                  );
                }).toList(),
              ),
            ),
          ),

          /*
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: corSecundaria,
                    height: 120,
                  ),
                );
              },
            ),
          ),*/
        ],
      ),
    );
  }
}
