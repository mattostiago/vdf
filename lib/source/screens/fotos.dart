import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Fotos extends StatefulWidget {
  const Fotos({super.key});

  @override
  State<Fotos> createState() => _FotosState();
}

class _FotosState extends State<Fotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotos"),
      ),
      body: const Center(child: Text("Fotos")),
    );
  }
}
