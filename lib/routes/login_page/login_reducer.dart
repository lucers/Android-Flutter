import 'package:fish_redux/fish_redux.dart';

import 'login_action.dart';
import 'login_state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.onChangeTabList: _onChangeTabList,
    },
  );
}

LoginState _onChangeTabList(LoginState state, Action action) {
  var payload = action.payload as Map;
  final LoginState newState = state.clone()
    ..controller = payload["control"]
    ..list = payload["tab"];
  return newState;
}
