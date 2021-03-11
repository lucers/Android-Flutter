import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'entrance_state.dart';

Widget buildView(EntranceState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Center(
      child: new Image.asset('assets/images/ic_launcher.png'),
    ),
  );
}
