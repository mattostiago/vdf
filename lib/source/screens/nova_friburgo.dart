import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NovaFriburgo extends StatefulWidget {
  const NovaFriburgo({super.key});

  @override
  State<NovaFriburgo> createState() => _NovaFriburgoState();
}

class _NovaFriburgoState extends State<NovaFriburgo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Friburgo"),
      ),
    );
  }
}
