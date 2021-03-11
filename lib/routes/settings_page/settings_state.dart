import 'dart:ui';

import 'package:android_flutter/global/global_state.dart';
import 'package:fish_redux/fish_redux.dart';

class SettingsState implements Cloneable<SettingsState>, GlobalBaseState {
  @override
  SettingsState clone() {
    return SettingsState();
  }

  @override
  Color themeColor;
}

SettingsState initState(Map<String, dynamic> args) {
  return SettingsState();
}
