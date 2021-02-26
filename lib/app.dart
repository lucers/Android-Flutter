import 'package:android_flutter/routes.dart';
import 'package:android_flutter/routes/main/main_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

Widget initApp() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MainPage().buildPage(null),
  );
}
