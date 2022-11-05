import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CafeDaManha extends StatefulWidget {
  const CafeDaManha({super.key});

  @override
  State<CafeDaManha> createState() => _CafeDaManhaState();
}

class _CafeDaManhaState extends State<CafeDaManha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Café da manhã")),
    );
  }
}
