import 'dart:ui';

import 'package:android_flutter/global/global_state.dart';
import 'package:fish_redux/fish_redux.dart';

class LoginState implements Cloneable<LoginState>, GlobalBaseState {
  @override
  LoginState clone() {
    return LoginState();
  }

  @override
  Color themeColor;
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState();
}
