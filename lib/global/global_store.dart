import 'package:android_flutter/global/global_reducer.dart';
import 'package:android_flutter/global/global_state.dart';
import 'package:fish_redux/fish_redux.dart';

class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store => _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}
