import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'settings_state.dart';

Widget buildView(SettingsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      body: Center(
        child: Text('Settings Page'),
      ));
}
