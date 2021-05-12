import 'dart:ui';

import 'package:android_flutter/global/global_state.dart';
import 'package:fish_redux/fish_redux.dart';

class SettingsState implements Cloneable<SettingsState>, GlobalBaseState {
  @override
  SettingsState clone() {
    return SettingsState()..data = data;
  }

  @override
  Color themeColor;

  String data;
}

SettingsState initState(Map<String, dynamic> args) {
  return SettingsState().clone()..data = "Row";
}
