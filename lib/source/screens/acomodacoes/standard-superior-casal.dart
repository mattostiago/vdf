import 'package:flutter/material.dart';

class StandardSuperiorCasal extends StatefulWidget {
  StandardSuperiorCasal({Key? key}) : super(key: key);

  @override
  State<StandardSuperiorCasal> createState() => _StandardSuperiorCasalState();
}

class _StandardSuperiorCasalState extends State<StandardSuperiorCasal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Standard Superior Casal"),
      ),
    );
  }
}
