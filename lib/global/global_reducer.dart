import 'package:fish_redux/fish_redux.dart';

import 'global_action.dart';
import 'global_state.dart';

Reducer<GlobalState> buildReducer() {
  return asReducer(
    <Object, Reducer<GlobalState>>{
      GlobalAction.changeThemeColor: _onChangeThemeColor,
    },
  );
}

GlobalState _onChangeThemeColor(GlobalState state, Action action) {
  return state.clone()..themeColor = action.payload;
}
