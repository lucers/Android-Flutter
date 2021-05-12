import 'package:fish_redux/fish_redux.dart';

enum SettingsAction { columnTap, rowTap }

class SettingsActionCreator {
  static Action columnTap(String data) {
    return Action(SettingsAction.columnTap, payload: data);
  }

  static Action rowTap(String data) {
    return Action(SettingsAction.rowTap, payload: data);
  }
}
