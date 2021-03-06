import 'package:android_flutter/routes/entrance_page/entrance_action.dart';
import 'package:fish_redux/fish_redux.dart';

import 'entrance_state.dart';

Reducer<EntranceState> buildReducer() {
  return asReducer(
    <Object, Reducer<EntranceState>>{
      EntranceAction.toNext: _onAction,
    },
  );
}

EntranceState _onAction(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}
