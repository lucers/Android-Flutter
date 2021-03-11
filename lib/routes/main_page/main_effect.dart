import 'package:android_flutter/app.dart';
import 'package:android_flutter/routes/main_page/main_action.dart';
import 'package:android_flutter/routes/routes.dart';
import 'package:fish_redux/fish_redux.dart';

import 'main_state.dart';

Effect<MainState> buildEffect() {
  return combineEffects(<Object, Effect<MainState>>{
    Lifecycle.initState: _init,
    MainAction.tapText: _onTapText,
  });
}

void _init(Action action, Context<MainState> context) {}

void _onTapText(Action action, Context<MainState> context) {
  Application.router.navigateTo(context.context, Routes.settingsPage);
}
