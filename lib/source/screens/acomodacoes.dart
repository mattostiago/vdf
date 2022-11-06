import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/models/menu_acomodacoes.dart';
import 'package:vdf/source/responsive/dimensions.dart';
import 'package:vdf/source/screens/acomodacoes/standard-casal.dart';
import 'package:vdf/source/screens/acomodacoes/standard-plus.dart';
import 'package:vdf/source/screens/acomodacoes/standard-superior-casal.dart';
import 'package:vdf/source/screens/acomodacoes/standard-superior.dart';
import 'package:vdf/source/utils/constants.dart';

class Acomodacoes extends StatefulWidget {
  const Acomodacoes({super.key});

  @override
  State<Acomodacoes> createState() => _AcomodacoesState();
}

class _AcomodacoesState extends State<Acomodacoes> {
  Botoes botao = Botoes();
  final List<MenuAcomodacoes> menu = [
    MenuAcomodacoes('assets/acomodacoes/standard-casal/margarida.jpg',
        'Standard Casal', 'Descricao', StandardCasal()),
    MenuAcomodacoes('assets/acomodacoes/standard-plus/azaleia-2.jpg',
        'Standard Plus', 'Descricao', StandardPlus()),
    MenuAcomodacoes('assets/acomodacoes/standard-superior/rosa.jpg',
        'Standard Superior', 'Descricao', StandardSuperior()),
    MenuAcomodacoes('assets/acomodacoes/standard-superior-casal/violeta.jpg',
        'Standard Superior Casal', 'Descricao', StandardSuperiorCasal()),
  ];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.white,
        //backgroundColor: Colors.black,
        title: const Text(
          "Acomodações",
          //style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: corPrimaria,
        //backgroundColor: Colors.cyan[900],
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
      floatingActionButton: botao.retornaBotaoFlutuanteWhatsApp(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  /*
                  ImageSlideshow(
                    indicatorColor: Colors.blue,
                    onPageChanged: (value) {
                      //debugPrint('Page changed: $value');
                    },
                    height: 250,
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
                  */
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: menu.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 4 / 3,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(
                                      image: AssetImage(menu[index].image),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      menu[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      menu[index].description,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => menu[index].classe));
                          },
                        ),
                      );
                    },
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
