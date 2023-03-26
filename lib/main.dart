import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:vdf/source/screens/acomodacoes.dart';
import 'package:vdf/source/screens/cafe_da_manha.dart';
import 'package:vdf/source/screens/fotos.dart';
import 'package:vdf/source/screens/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vdf/source/screens/jogos.dart';
import 'package:vdf/source/screens/nova_friburgo.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:vdf/source/utils/navigate.dart';

void main() async {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RobotDetector(
      child: MaterialApp(
        navigatorObservers: [
          seoRouteObserver,
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', 'BR'),
          Locale('es', ''), // Spanish, no country code
        ],
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        theme: ThemeData(
          primarySwatch: corPrimaria,
        ),
        initialRoute: '/',
        routes: Navigate.routes,
      ),
    );
  }
}
