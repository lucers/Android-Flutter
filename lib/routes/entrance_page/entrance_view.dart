import 'package:android_flutter/routes/entrance_page/entrance_action.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'entrance_state.dart';

Widget buildView(EntranceState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Center(
      child: GestureDetector(
        child: new Image.asset('assets/images/icon_logo.png'),
        onTap: () => {
          dispatch(EntranceActionCreator.toNext())
        },
      ),
    )
  );
}
