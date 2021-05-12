import 'package:android_flutter/app.dart';
import 'package:fish_redux/fish_redux.dart';

import 'form_action.dart';
import 'form_state.dart';

Effect<FormState> buildEffect() {
  return combineEffects(<Object, Effect<FormState>>{
    FormAction.pop: _pop,
  });
}

void _pop(Action action, Context<FormState> ctx) {
  Application.router.pop(ctx.context);
}
