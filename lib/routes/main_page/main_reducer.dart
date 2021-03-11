import 'package:fish_redux/fish_redux.dart';

import 'main_action.dart';
import 'main_state.dart';

Reducer<MainState> buildReducer() {
  return asReducer(
    <Object, Reducer<MainState>>{
      MainAction.tapNavigationItem: _onNavigationItemTap,
    },
  );
}

MainState _onNavigationItemTap(MainState state, Action action) {
  final int currentIndex = action.payload;
  return state.clone()..currentIndex = currentIndex;
}
