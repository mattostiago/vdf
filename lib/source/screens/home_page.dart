import 'package:flutter/material.dart';
import 'package:vdf/source/responsive/desktop_body.dart';
import 'package:vdf/source/responsive/mobile_body.dart';
import 'package:vdf/source/responsive/responsive.layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
//retorna home
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
