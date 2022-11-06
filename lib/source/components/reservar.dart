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

    novaData = await pickDateRange(context);
    novaData != null
        ? modal.chamaModal(
            context,
            Text("A data selecionada é: " +
                "${novaData.start.day}/${novaData.start.month} a ${novaData.end.day}/${novaData.end.month}" +
                "\n\nInserir adultos e crianças.\nVincular com o motor de reservas.\n\n"))
        : null;
  }
}
