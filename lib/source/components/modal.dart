import 'package:flutter/material.dart';

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
