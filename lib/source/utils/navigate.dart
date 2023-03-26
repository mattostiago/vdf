import 'package:flutter/material.dart';
import 'package:vdf/source/screens/acomodacoes.dart';
import 'package:vdf/source/screens/cafe_da_manha.dart';
import 'package:vdf/source/screens/fotos.dart';
import 'package:vdf/source/screens/home_page.dart';
import 'package:vdf/source/screens/jogos.dart';
import 'package:vdf/source/screens/nova_friburgo.dart';
import 'package:vdf/source/screens/pousada.dart';
import 'package:vdf/source/screens/promocoes.dart';

class Navigate {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomePage(),
    '/acomodacoes': (context) => const Acomodacoes(),
    '/pousada': (context) => const Pousada(),
    '/cafe-da-manha': (context) => const CafeDaManha(),
    '/fotos': (context) => const Fotos(),
    '/jogos': (context) => const Jogos(),
    '/nova-friburgo': (context) => const NovaFriburgo(),
    '/promocoes': (context) => const Promocoes(),
  };
}
