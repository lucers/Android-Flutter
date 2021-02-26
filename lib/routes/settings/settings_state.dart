import 'package:fish_redux/fish_redux.dart';

class SettingsState implements Cloneable<SettingsState> {

  @override
  SettingsState clone() {
    return SettingsState();
  }
}

SettingsState initState(Map<String, dynamic> args) {
  return SettingsState();
}
