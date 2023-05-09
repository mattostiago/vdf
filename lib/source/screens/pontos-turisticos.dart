import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:vdf/source/components/botoes.dart';
import 'dart:ui' as ui;
import 'dart:html' as html;

class PontosTuristicos extends StatefulWidget {
  const PontosTuristicos({super.key});

  @override
  State<PontosTuristicos> createState() => _PontosTuristicosState();
}

class _PontosTuristicosState extends State<PontosTuristicos> {
  Botoes botao = Botoes();

  void initState() {
    super.initState();
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'pontos-turisticos',
        (int viewId) => html.IFrameElement()
          ..width = '400'
          ..height = '900'
          ..src = 'https://descubranovafriburgo.com.br/pontos-turisticos/'
          ..style.border = 'none');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextRenderer(
          style: TextRendererStyle.header1,
          child: Text("Pontos Turísticos"),
        ),
        // backgroundColor: Color(0xffb35bacc),
        centerTitle: true,
        elevation: 0,
        actions: [botao.retornaBotaoSimplesWhatsApp()],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: const HtmlElementView(
                              viewType: 'pontos-turisticos')),
                      Container(
                        color: Colors.green,
                        height: 110,
                        //  width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Image.network(
                              "https://descubranovafriburgo.com.br/wp-content/uploads/2022/03/Ativo-1.png"),
                        ),

                        /*GridView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: menu2.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 4 / 3,
                            crossAxisCount: 3,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 1.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            //LinkRederer para SEO
                            return LinkRenderer(
                              text: menu2[index].title,
                              href: urlSite,
                              child: Card(
                                //  color: const Color.fromARGB(255, 98, 152, 55),
                                color: cor3,
                                elevation: 0.9,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        menu2[index].icon,
                                        size: 25,
                                        color: Colors.white70,
                                      ),
                                      //SizedBox(height: 20),
                                      Text(
                                        menu2[index].title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    //Navigator.pushNamed(context, menu2[index].urlExtensao);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        */
                      ),
                    ],
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
