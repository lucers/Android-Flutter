import 'package:android_flutter/routes/form_page/form_action.dart';
import 'package:fish_redux/fish_redux.dart';

import 'form_state.dart';

Reducer<FormState> buildReducer() {
  return asReducer(
    <Object, Reducer<FormState>>{
      FormAction.pop : _onAction,
    },
  );
}

FormState _onAction(FormState state, Action action) {
  final FormState newState = state.clone();
  return newState;
}
