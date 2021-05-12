import 'dart:async';

import 'package:android_flutter/app.dart';
import 'package:android_flutter/routes/entrance_page/entrance_action.dart';
import 'package:android_flutter/routes/routes.dart';
import 'package:fish_redux/fish_redux.dart';

import 'entrance_state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    Lifecycle.initState: _init,
    EntranceAction.toNext : _toNext,
  });
}

void _init(Action action, Context<EntranceState> context) {
  Future.delayed(Duration(seconds: 3), () {
    Application.router.navigateTo(context.context, Routes.formPage, replace: false);
  });
}

_toNext(Action action, Context<EntranceState> context) {
  Application.router.navigateTo(context.context, Routes.formPage, replace: false);
}
