import 'package:fish_redux/fish_redux.dart';

import 'home_action.dart';
import 'home_state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}
