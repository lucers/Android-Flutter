import 'package:android_flutter/routes/not_found_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String mainPage = "/mainPage";
  static String loginPage = "/loginPage";
  static String settingsPage = "/settingsPage";
  static String webPage = "/webPage";

  static List<dynamic> listRoutes = [];

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return NotFoundPage();
    });
    listRoutes.forEach((element) {

    });
  }
}
