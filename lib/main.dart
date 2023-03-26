import 'package:flutter/material.dart';
import 'package:vdf/source/screens/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vdf/source/utils/constants.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() async {
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
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    );
  }
}
