import 'package:flutter/material.dart';
import 'package:vdf/source/components/reservar.dart';

class Botoes {
  Reservar reservar = Reservar();
  Container botaoReservarAgora(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.all(8),
      child: ElevatedButton.icon(
        onPressed: () {
          reservar.iniciarConsulta(context);
        },
        icon: const Icon(
          Icons.calendar_today_rounded,
        ),
        label: const Padding(
          padding: EdgeInsets.all(10),
          child: Text("Reservar agora"),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              // Change your radius here
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
