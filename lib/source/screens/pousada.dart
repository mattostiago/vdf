import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pousada extends StatefulWidget {
  const Pousada({super.key});

  @override
  State<Pousada> createState() => _PousadaState();
}

class _PousadaState extends State<Pousada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("A Pousada"),
      ),
    );
  }
}
