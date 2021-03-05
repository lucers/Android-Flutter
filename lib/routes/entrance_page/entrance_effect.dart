import 'package:fish_redux/fish_redux.dart';

import 'entrance_action.dart';
import 'entrance_state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {
}
