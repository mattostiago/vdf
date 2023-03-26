import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:vdf/source/components/botoes.dart';
import 'package:vdf/source/components/modal.dart';
import 'package:vdf/source/data/dados.dart';
import 'package:vdf/source/models/imagem.dart';
import 'package:vdf/source/screens/detalhes_foto.dart';
import 'package:vdf/source/utils/constants.dart';

class Fotos extends StatefulWidget {
  const Fotos({super.key});

  @override
  State<Fotos> createState() => _FotosState();
}

class _FotosState extends State<Fotos> {
  Modal modal = Modal();
  Botoes botao = Botoes();
  Dados dados = Dados();

  @override
  Widget build(BuildContext context) {
    List imagem = dados.pegarGaleria();
    return Scaffold(
      appBar: AppBar(
        title: const TextRenderer(
          style: TextRendererStyle.header1,
          child: Text("Fotos"),
        ),
        centerTitle: true,
      ),
      floatingActionButton: botao.retornaBotaoFlutuanteWhatsApp(),
      body: Center(
        child: Column(
          children: [
            ImageSlideshow(
                indicatorColor: cor1,
                onPageChanged: (value) {
                  //debugPrint('Page changed: $value');
                },
                height: MediaQuery.of(context).size.height * 0.4,
                indicatorRadius: 2,
                autoPlayInterval: 3000,
                isLoop: true,
                children: dados.pegarSlideSobre()),
            // const SizedBox(height: 8),
            const TextRenderer(
              style: TextRendererStyle.paragraph,
              child: Text(
                'Confira as fotos da nossa Pousada. Um lugar com visual deslumbrante com o conforto ideal.',
                style: TextStyle(color: Colors.transparent),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: imagem.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 9 / 12,
                  crossAxisCount: 3,
                  //crossAxisSpacing: 5.0,
                  //mainAxisSpacing: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: InkWell(
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(imagem[index].imagem),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      onTap: () {
                        modal.chamaModalImagens(context, imagem[index]);
                        //Navigator.of(context).push(MaterialPageRoute( builder: (context) => DetalhesFoto(imagem: imagem[index])));
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
