import 'package:fish_redux/fish_redux.dart';

import 'web_action.dart';
import 'web_state.dart';

Effect<WebState> buildEffect() {
  return combineEffects(<Object, Effect<WebState>>{
    WebAction.action: _onAction,
  });
}

void _onAction(Action action, Context<WebState> ctx) {
}
