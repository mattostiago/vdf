import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdf/source/components/modal.dart';

class Reservar {
  Modal modal = Modal();
  DateTime now = DateTime.now();
  String data = "Data";
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
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    String dropdownvalue = 'Item 1';

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
        : null;
  }

  void setState(Null Function() param0) {}
}
