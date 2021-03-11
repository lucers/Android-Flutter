import 'package:android_flutter/global/global_state.dart';
import 'package:android_flutter/global/global_store.dart';
import 'package:android_flutter/models/page_info.dart';
import 'package:android_flutter/routes/entrance_page/entrance_page.dart';
import 'package:android_flutter/routes/login_page/login_page.dart';
import 'package:android_flutter/routes/main_page/main_page.dart';
import 'package:android_flutter/routes/not_found_page.dart';
import 'package:android_flutter/routes/settings_page/settings_page.dart';
import 'package:android_flutter/routes/web_page/web_page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart' hide Page;

class Routes {
  static const String entrancePage = "/entrancePage";
  static const String mainPage = "/mainPage";
  static const String loginPage = "/loginPage";
  static const String settingsPage = "/settingsPage";
  static const String webPage = "/webPage";

  static List<PageInfo> listRoutes = [];

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return NotFoundPage();
    });

    listRoutes.addAll([
      PageInfo(pageName: entrancePage, page: EntrancePage()),
      PageInfo(pageName: mainPage, page: MainPage()),
      PageInfo(pageName: loginPage, page: LoginPage()),
      PageInfo(pageName: settingsPage, page: SettingsPage()),
      PageInfo(pageName: webPage, page: WebPage()),
    ]);

    listRoutes.forEach((dynamic route) {
      if (route.page.isTypeof<GlobalBaseState>()) {
        route.page.connectExtraStore<GlobalState>(GlobalStore.store, updateState());
      }
      router.define(route.pageName,
          handler: Handler(
              handlerFunc: (BuildContext context, Map<String, List<String>> params) => route.page.buildPage(null)));
    });
  }

  static updateState() {
    return (Object pageState, GlobalState appState) {
      final GlobalBaseState state = pageState;

      if (pageState is Cloneable) {
        final Object copy = pageState.clone();
        final GlobalBaseState newState = copy;
        if (state.themeColor != appState.themeColor) {
          newState.themeColor = appState.themeColor;
        }
        return newState;
      }
      return pageState;
    };
  }
}
