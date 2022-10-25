import 'package:flutter/material.dart';

class StandardSuperior extends StatefulWidget {
  StandardSuperior({Key? key}) : super(key: key);

  @override
  State<StandardSuperior> createState() => _StandardSuperiorState();
}

class _StandardSuperiorState extends State<StandardSuperior> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Standard Superior"),
      ),
    );
  }
}
