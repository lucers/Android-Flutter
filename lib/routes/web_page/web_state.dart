import 'dart:ui';

import 'package:android_flutter/global/global_state.dart';
import 'package:fish_redux/fish_redux.dart';

class WebState implements Cloneable<WebState>, GlobalBaseState {
  @override
  WebState clone() {
    return WebState();
  }

  @override
  Color themeColor;
}

WebState initState(Map<String, dynamic> args) {
  return WebState();
}
