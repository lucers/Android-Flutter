import 'package:fish_redux/fish_redux.dart';

enum LoginAction { onChangeTabList }

class LoginActionCreator {

  static Action onChangeTabListAction(map) {
    return Action(LoginAction.onChangeTabList,payload: map);
  }
}
