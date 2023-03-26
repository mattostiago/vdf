import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:vdf/source/components/reservar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Botoes {
  Reservar reservar = Reservar();
  LinkRenderer botaoReservarAgora(BuildContext context) {
    return LinkRenderer(
      text: 'Consultar as Tarifas para hospedagem na Pousda Vale das Flores',
      href:
          'https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/',
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        child: ElevatedButton.icon(
          onPressed: () {
            // reservar.iniciarConsulta(context);
            launchUrl(Uri.parse(
                'https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/'));
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
      ),
    );
  }

  LinkRenderer botaoWhatsappConfiguracaoDiferente(BuildContext context) {
    return LinkRenderer(
      text: 'Falar com a Pousda Vale das Flores no WhatsApp',
      href: 'https://api.whatsapp.com/send?phone=5522997886941',
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        child: ElevatedButton.icon(
          onPressed: () {
            // reservar.iniciarConsulta(context);
            launchUrl(
                Uri.parse('https://api.whatsapp.com/send?phone=5522997886941'));
          },
          icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
          label: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Consultar via WhatsApp",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.green,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                // Change your radius here
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }

  LinkRenderer retornaBotaoConsultarTarifas(BuildContext context) {
    return LinkRenderer(
      text: 'Consultar as Tarifas para hospedagem na Pousda Vale das Flores',
      href:
          'https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/',
      child: ElevatedButton.icon(
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
      ),
    );
  }

  LinkRenderer retornaBotaoFlutuanteWhatsApp() {
    return LinkRenderer(
      text: 'Falar com a Pousda Vale das Flores no WhatsApp',
      href: 'https://api.whatsapp.com/send?phone=5522997886941',
      child: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
        onPressed: () {
          launchUrl(
              Uri.parse('https://api.whatsapp.com/send?phone=5522997886941'));
        },
      ),
    );
  }
}
