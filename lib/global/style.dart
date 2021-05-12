import 'package:flutter/material.dart';

// 对风格及颜色进行合并
TextStyle merge(TextStyle style, Color color) {
  return style.copyWith(color: color);
}

// 全局通用文本Style
class AppTextTheme extends TextTheme {
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle body1;
  final TextStyle body1Bold;
  final TextStyle body2;
  final TextStyle body2Bold;
  final TextStyle caption1;
  final TextStyle caption1Bold;
  final TextStyle caption2;
  final TextStyle caption2Bold;
  final TextStyle dataLarge;
  final TextStyle dataMedium1;
  final TextStyle dataMedium2;
  final TextStyle dataMedium3;
  final TextStyle dataSmall;
  final TextStyle dataSmall2;

  AppTextTheme({
    TextStyle headline1,
    TextStyle headline2,
    TextStyle body1,
    TextStyle body1Bold,
    TextStyle body2,
    TextStyle body2Bold,
    TextStyle caption1,
    TextStyle caption1Bold,
    TextStyle caption2,
    TextStyle caption2Bold,
    TextStyle dataLarge,
    TextStyle dataMedium1,
    TextStyle dataMedium2,
    TextStyle dataMedium3,
    TextStyle dataSmall,
    TextStyle dataSmall2,
  })  : headline1 = headline1,
        headline2 = headline2,
        body1 = body1,
        body1Bold = body1Bold,
        body2 = body2,
        body2Bold = body2Bold,
        caption1 = caption1,
        caption1Bold = caption1Bold,
        caption2 = caption2,
        caption2Bold = caption2Bold,
        dataLarge = dataLarge,
        dataMedium1 = dataMedium1,
        dataMedium2 = dataMedium2,
        dataMedium3 = dataMedium3,
        dataSmall = dataSmall,
        dataSmall2 = dataSmall2,
        super(
            headline1: headline1,
            headline2: headline2,
            headline3: body1Bold,
            headline4: body2Bold,
            headline5: caption1,
            headline6: caption2,
            bodyText1: body1,
            bodyText2: body2,
            caption: caption1);

  static AppTextTheme of(BuildContext context, {bool shadowThemeOnly = false}) {
    final ThemeData themeData =
        Theme.of(context, shadowThemeOnly: shadowThemeOnly);
    final theme = themeData.textTheme;
    if (theme is AppTextTheme) {
      return theme;
    }
    return load();
  }

  static AppTextTheme load() {
    if (current != null) {
      return current;
    }
    current = AppTextTheme(
      headline1: TextStyle(
          fontSize: 25,
          height: 34 / 25.0,
          fontWeight: FontWeight.w500,
          color: AppColorTheme.load().main),
      headline2: TextStyle(
          fontSize: 21, height: 28 / 21.0, fontWeight: FontWeight.w500),
      body1: TextStyle(
          fontSize: 17, height: 22 / 17.0, color: AppColorTheme.load().main),
      body1Bold: TextStyle(
        fontSize: 17,
        height: 22 / 17.0,
        fontWeight: FontWeight.bold,
        color: AppColorTheme.load().main
      ),
      body2: TextStyle(
          fontSize: 15, height: 20 / 15.0, color: AppColorTheme.load().body),
      body2Bold: TextStyle(
          fontSize: 15, height: 20 / 15.0, fontWeight: FontWeight.w500),
      caption1: TextStyle(
          fontSize: 13, height: 18 / 13.0, fontWeight: FontWeight.normal),
      caption1Bold: TextStyle(
          fontSize: 13, height: 18 / 13.0, fontWeight: FontWeight.w500),
      caption2: TextStyle(
          fontSize: 12, height: 16 / 12.0, fontWeight: FontWeight.normal),
      caption2Bold: TextStyle(
          fontSize: 12, height: 16 / 12.0, fontWeight: FontWeight.w500),
      dataLarge: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
          fontSize: 48,
          height: 56 / 48.0),
      dataMedium1:
          TextStyle(fontFamily: 'Roboto', fontSize: 20, height: 28 / 20.0),
      dataMedium2:
          TextStyle(fontFamily: 'Roboto', fontSize: 24, height: 28 / 24.0),
      dataMedium3:
          TextStyle(fontFamily: 'Roboto', fontSize: 14, height: 16 / 14.0),
      dataSmall:
          TextStyle(fontFamily: 'Roboto', fontSize: 20, height: 22 / 20.0),
      dataSmall2:
        TextStyle(fontFamily: 'Roboto', fontSize: 18, height: 20 / 18.0),
    );
    return current;
  }

  static AppTextTheme current;
}

// 全局通用颜色值
class AppColorTheme {
  static const int _primary = 0xFF28ADEF;
  static const int _primaryWhite = 0xFFFFFFFF;

  final MaterialColor primary = MaterialColor(_primary, <int, Color>{
    50: Color(0xFFE2F5FD),
    100: Color(0xFFB5E6FA),
    200: Color(0xFF86D6F7),
    300: Color(0xFF59C6F3),
    400: Color(0xFF3CB9F1),
    500: Color(_primary),
    600: Color(0xFF249FE0),
    700: Color(0xFF1E8CCC),
    800: Color(0xFF1B7BB8),
    900: Color(0xFF145B96),
  });

  final MaterialColor materialWhite = MaterialColor(_primaryWhite, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(_primaryWhite),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });

  final positive = Color(0xFF05C649);
  final error = Color(0xFFF55734);
  final temperature = Color(0xFFEDE22A);
  final temperatureDark = Color(0xFFEBA00E);
  final quality1 = Color(0xFF2ED467);
  final quality2 = Color(0xFFDEAF00);
  final quality3 = Color(0xFFDE822A);
  final quality4 = Color(0xFFD24127);
  final quality5 = Color(0xFF672B97);
  final quality6 = Color(0xFF531130);
  final rain = Color(0xFF6ABDFF);
  final rainDark = Color(0xFF3E7CF6);
  final humidity = Color(0xFF83E3E4);
  final humidityDark = Color(0xFF00B2BD);
  final ppfd = Color(0xFFFFC949);
  final ppfdDark = Color(0xFFFA7E38);
  final radiation = Color(0xFFF5BCDA);
  final radiationDark = Color(0xFFEC3F92);

  // 文本颜色
  final main = Color(0xFF14181A);
  final main52 = Color(0x5214181A);
  final mainCC = Color(0xCC14181A);
  final mainZero = Color(0x0014181A);
  final body = Color(0xFF363E42);
  final label = Color(0xFF6B7980);
  final placeholder = Color(0xFFB3BABD);
  final lineBorder = Color(0xFFCEDFE8);
  final line = Color(0xFFE5EAED);
  final background = Color(0xFFF6F7F9);
  final backgroundInput = Color(0xFFF2F3F5);
  final white = Color(0xFFFFFFFF);
  final splashBackground = Color(0xFFF2FBFF);

  static AppColorTheme current;

  static AppColorTheme load() {
    if (current != null) {
      return current;
    }
    current = AppColorTheme();
    return current;
  }
}
