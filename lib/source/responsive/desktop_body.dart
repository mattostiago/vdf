import 'package:flutter/material.dart';
import 'package:vdf/source/screens/menu_drawer.dart';
import 'package:vdf/source/utils/constants.dart';

class MyDesktopBody extends StatefulWidget {
  @override
  _MyDesktopBodyState createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  @override
  void initState() {
    super.initState();
  }

  //MyDesktopBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      backgroundColor: corTerciaria,
      appBar: AppBar(
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
        actions: [
          /*
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.account_circle_rounded),
            label: Text("Minha Conta"),
          ),
          */
          // Icon(Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Primeira coluna
            Expanded(
              child: Column(
                children: [
                  //painel maior
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 10 / 3,
                      child: Container(
                        color: corSecundaria,
                        child: Center(
                          child: Column(
                            children: [
                              Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      // aspectRatio: 10 / 3,
                      height: 150,
                      //width: 300,
                      child: Container(
                        color: corSecundaria,
                        child: Center(
                          child: Column(
                            children: [
                              Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // cards abaixo do painel maior
                  Expanded(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: corSecundaria,
                            height: 300,
                            child: Column(
                              children: [],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //width: 450,
                color: corSecundaria,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 380,
                            child: Column(
                              children: [],
                            ),
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
      ),
    );
  }
}
