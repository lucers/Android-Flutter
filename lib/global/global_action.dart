import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

enum GlobalAction { changeThemeColor }

class GlobalActionCreator {
  static Action onChangeThemeColor(Color color) {
    return Action(GlobalAction.changeThemeColor, payload: color);
  }
}
