import 'package:flutter/material.dart';
import 'package:vdf/source/screens/home_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}
