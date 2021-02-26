import 'package:fish_redux/fish_redux.dart';

import 'login_action.dart';
import 'login_state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {}
