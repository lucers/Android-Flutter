import 'dart:ui';

import 'package:android_flutter/global/global_state.dart';
import 'package:android_flutter/models/tab_model.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class LoginState implements Cloneable<LoginState>, GlobalBaseState {
  TabController controller;
  List<TabModel> list;

  @override
  LoginState clone() {
    return LoginState()
      ..controller = controller
      ..list = list;
  }

  @override
  Color themeColor;
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState();
}
