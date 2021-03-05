import 'package:android_flutter/routes.dart';
import 'package:android_flutter/routes/entrance_page/entrance_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Widget initApp() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  return MaterialApp(
    home: EntrancePage().buildPage(null),
    title: 'Flutter',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate
    ],
    supportedLocales: [
      const Locale.fromSubtags(languageCode: 'en'),
      const Locale.fromSubtags(languageCode: 'zh'),
    ],
    debugShowCheckedModeBanner: false,
  );
}
