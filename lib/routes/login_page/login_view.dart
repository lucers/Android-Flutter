import 'package:android_flutter/global/global_action.dart';
import 'package:android_flutter/global/global_store.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'login_state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      body: Center(
    child: GestureDetector(
      child: Text(
        'Login Page',
        style: TextStyle(
          color: state.themeColor,
        ),
      ),
      onTap: () {
        GlobalStore.store.dispatch(GlobalActionCreator.onChangeThemeColor(Colors.red));
      },
    ),
  ));
}
