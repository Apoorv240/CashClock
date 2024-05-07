import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/alarms.dart';
import 'pages/home_page.dart';

void main() {
  runApp(CupertinoApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Localizations(
    //   locale: const Locale('en', 'US'),
    //   delegates: const <LocalizationsDelegate<dynamic>>[
    //     DefaultWidgetsLocalizations.delegate,
    //     DefaultMaterialLocalizations.delegate,
    //   ],
    //   child: AlarmsPage()
    // );
    return HomePage();
  }
}