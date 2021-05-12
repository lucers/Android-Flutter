import 'package:android_flutter/generated/l10n.dart';
import 'package:android_flutter/global/global_state.dart';
import 'package:android_flutter/routes/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_context/one_context.dart';

Widget initApp() {
  // Routes Config
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;

  return MaterialApp(
    navigatorKey: OneContext().key,
    home: Routes.listRoutes[0].page.buildPage(null),
    onGenerateRoute: router.generator,
    builder: OneContext().builder,
    onGenerateTitle: (context) {
      return S.of(context).appName;
    },
    // theme config
    theme: ThemeData(
        primaryColor: GlobalState().themeColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent),
    // local support
    localizationsDelegates: [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate
    ],
    supportedLocales: S.delegate.supportedLocales,
    // hide debug flag
    debugShowCheckedModeBanner: false,
  );
}

class Application {
  static FluroRouter router;
}
