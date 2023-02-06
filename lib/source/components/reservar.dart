import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdf/source/components/modal.dart';

class Reservar {
  Modal modal = Modal();
  DateTime now = DateTime.now();
  String data = "Data";
  Uri _url = Uri.parse("");

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day + 1),
  );
  Future pickDateRange(BuildContext context) async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      saveText: "CONTINUAR",
      helpText: "DATA DE ENTRADA E SAÍDA",
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(2022),
      lastDate: DateTime(2100),
    );

    if (newDateRange == null) {
      return;
    } else {
      return newDateRange;
    }
  }

  iniciarConsulta(BuildContext context) async {
    DateTimeRange? novaData;
    //https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/reservation?checkin=aaaa-mm-dd&checkout=aaaa-mm-dd&adults=N&child1=N&child2=N&child3=N&voucher=XXXXID979797
    //https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/reservation?checkin=2023-01-26&checkout=2023-01-29
    novaData = await pickDateRange(context);
    String mesEntrada = "";
    String mesSaida = "";

    if (novaData!.start.month < 10) {
      mesEntrada = "0${novaData.start.month}";
    } else {
      mesEntrada = "${novaData.start.month}";
    }

    if (novaData.end.month < 10) {
      mesSaida = "0${novaData.end.month}";
    } else {
      mesSaida = "${novaData.end.month}";
    }

    String link =
        'https://reservas.desbravador.com.br/hotel-app/pousada-vale-das-flores/reservation?checkin=${novaData.start.year}-$mesEntrada-${novaData.start.day}&checkout=${novaData.end.year}-$mesSaida-${novaData.end.day}';
    _url = Uri.parse(link);

    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    String dropdownvalue = 'Item 1';

    dynamic iniciaDesbravador() {
      _launchUrl();
      return modal.chamaModal(
          context,
          Column(
            children: const [
              Text("A busca pelos valores iniciou em nova aba."),
            ],
          ));
    }

    novaData != null ? iniciaDesbravador() : null;
/*
    novaData != null
        // ignore: use_build_context_synchronously
        ? modal.chamaModal(
            context,
            Column(
              children: [
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                Text(
                    "A data selecionada é: ${novaData.start.day}/${novaData.start.month} a ${novaData.end.day}/${novaData.end.month}\n\nInserir adultos e crianças.\nVincular com o motor de reservas.\n\n"),
              ],
            ))
        : null; */
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  void setState(Null Function() param0) {}
}
