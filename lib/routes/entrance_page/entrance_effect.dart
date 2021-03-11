import 'dart:async';

import 'package:android_flutter/app.dart';
import 'package:android_flutter/routes/routes.dart';
import 'package:fish_redux/fish_redux.dart';

import 'entrance_state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<EntranceState> context) {
  Future.delayed(Duration(seconds: 1), () {
    Application.router.navigateTo(context.context, Routes.mainPage, replace: true);
  });
}
