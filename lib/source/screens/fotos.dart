import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vdf/source/components/modal.dart';
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
  final List<Imagem> imagem = [
    Imagem("assets/pousada/por-do-sol-3.jpg", "Pôr do Sol 3", "Descrição3"),
    Imagem("assets/pousada/por-do-sol.jpg", "Pôr do Sol 1", "Descrição1"),
    Imagem("assets/pousada/por-do-sol-2.jpg", "Pôr do Sol 2", "Descrição2"),
    Imagem("assets/pousada/por-do-sol-3.jpg", "Pôr do Sol 4", "Descrição4"),
    Imagem("assets/pousada/por-do-sol-3.jpg", "Pôr do Sol 3", "Descrição3"),
    Imagem("assets/pousada/por-do-sol.jpg", "Pôr do Sol 1", "Descrição1"),
    Imagem("assets/pousada/por-do-sol-2.jpg", "Pôr do Sol 2", "Descrição2"),
    Imagem("assets/pousada/por-do-sol-3.jpg", "Pôr do Sol 4", "Descrição4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotos"),
      ),
      body: Center(
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
            }),
      ),
    );
  }
}
