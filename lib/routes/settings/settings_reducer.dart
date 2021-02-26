import 'package:fish_redux/fish_redux.dart';

import 'settings_action.dart';
import 'settings_state.dart';

Reducer<SettingsState> buildReducer() {
  return asReducer(
    <Object, Reducer<SettingsState>>{
      SettingsAction.action: _onAction,
    },
  );
}

SettingsState _onAction(SettingsState state, Action action) {
  final SettingsState newState = state.clone();
  return newState;
}
