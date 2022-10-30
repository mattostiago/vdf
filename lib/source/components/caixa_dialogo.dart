import 'package:flutter/material.dart';

class CaixaDialogo {
  Text texto() {
    return Text("");
  }

  caixaSimplesTituloEMensagem(
      BuildContext context, String title, String mensagem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(mensagem),
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
  }
}
