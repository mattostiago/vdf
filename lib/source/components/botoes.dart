import 'package:flutter/material.dart';
import 'package:vdf/source/components/reservar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdf/source/utils/constants.dart';

class Botoes {
  Reservar reservar = Reservar();
  Container botaoReservarAgora(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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

  ElevatedButton retornaBotaoConsultarTarifas(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        //reservar.iniciarConsulta(context);
        launchUrl(Uri.parse(
            'https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/'));
      },
      icon: const Icon(Icons.calendar_today_rounded, color: Colors.white),
      label: const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "Consultar tarifas",
          style: TextStyle(color: Colors.white),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(cor1),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            // Change your radius here
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  FloatingActionButton retornaBotaoFlutuanteWhatsApp() {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      child: const Icon(Icons.phone),
      onPressed: () {
        launchUrl(
            Uri.parse('https://api.whatsapp.com/send?phone=5522997886941'));
      },
    );
  }
}
