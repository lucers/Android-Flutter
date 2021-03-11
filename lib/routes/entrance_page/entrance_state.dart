import 'dart:ui';

import 'package:android_flutter/global/global_state.dart';
import 'package:fish_redux/fish_redux.dart';

class EntranceState implements Cloneable<EntranceState>, GlobalBaseState {
  int countTime;

  @override
  EntranceState clone() {
    return EntranceState()..countTime = countTime;
  }

  @override
  Color themeColor;
}

EntranceState initState(Map<String, dynamic> args) {
  return EntranceState()..countTime = 3;
}
