import 'package:fish_redux/fish_redux.dart';

import 'settings_action.dart';
import 'settings_state.dart';

Reducer<SettingsState> buildReducer() {
  return asReducer(
    <Object, Reducer<SettingsState>>{
      SettingsAction.columnTap: _onColumnTap,
      SettingsAction.rowTap: _onRowTap,
    },
  );
}

SettingsState _onColumnTap(SettingsState state, Action action) {
  return state.clone()..data = action.payload;
}

SettingsState _onRowTap(SettingsState state, Action action) {
  return state.clone()..data = action.payload;
}
