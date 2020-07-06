///////////////////////////////////////////
// This app demonstrates a typical new app boilerplate I made based on my experience.
// In ths case it's just a login form..
// The boilerplate includes:
// Basic architecture (the advanced one depends entirely on the project)
// Global Styles
// Multi-Language Support
// Reactive (BLOC pattern) setup
// Embedded sample fonts
///////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'global/provider.dart';
import 'global/language.dart';
import 'pages/login_page.dart';

Future main() async {
  runApp(new MyApp());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        localizationsDelegates: [
          const LanguageLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'), // English
          const Locale('bg'), // Bulgarian
        ],
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFB6BFC6),
          backgroundColor: Colors.white,
        ),
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => LoginPage(),
        },
        home: LoginPage(),
      )
    );
  }
}

