import 'package:flutter/material.dart';

class StandardPlus extends StatefulWidget {
  StandardPlus({Key? key}) : super(key: key);

  @override
  State<StandardPlus> createState() => _StandardPlusState();
}

class _StandardPlusState extends State<StandardPlus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Standard Plus"),
      ),
    );
  }
}
