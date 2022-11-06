import 'package:flutter/material.dart';
import 'package:vdf/source/models/imagem.dart';

class Modal {
  chamaModal(BuildContext context, var widget) {
    showModalBottomSheet(
      //enableDrag: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.maximize,
              size: 40,
              color: Colors.black54,
            ),
            widget,
          ],
        ),
      ),
    );
  }

  chamaModalImagens(BuildContext context, Imagem imagem) {
    showModalBottomSheet(
      //enableDrag: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.maximize,
              size: 40,
              color: Colors.black54,
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(imagem.imagem),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //Image.asset(imagem.imagem),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 4, top: 4),
                      child: Image.asset(
                        "assets/Logo-v-160.png",
                        scale: 8,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 4, top: 4),
                      child: Text(
                        imagem.nome,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  chamaModalReservas(BuildContext context, var pickDateRange, var data) {
    showModalBottomSheet(
      //enableDrag: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.maximize,
              size: 40,
              color: Colors.black54,
            ),
            Column(
              children: [
                Text("Motor de reservas\n\n\n\n\n\n\n\n\n"),
                ElevatedButton(
                  onPressed: () {
                    pickDateRange();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    data,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  chamaModalAmenidades(
      BuildContext context, IconData icone, String titulo, String descricao) {
    showModalBottomSheet(
      //enableDrag: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.maximize,
              size: 40,
              color: Colors.black54,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Material(
                        shape: const CircleBorder(
                            side: BorderSide(color: Colors.black54)),
                        child: InkWell(
                          splashColor: Colors.black45, // Splash color

                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(
                              icone,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        titulo,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Text(descricao)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
