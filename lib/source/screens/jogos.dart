import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Jogos extends StatefulWidget {
  const Jogos({super.key});

  @override
  State<Jogos> createState() => _JogosState();
}

class _JogosState extends State<Jogos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jogos"),
      ),
    );
  }
}
