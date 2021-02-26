import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'main_state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      body: Center(
    child: Text('Main Page'),
  ));
}
