import 'package:flutter/material.dart';

class Botoes {
  Container botaoReservarAgora(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      child: ElevatedButton.icon(
        onPressed: () {},
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
