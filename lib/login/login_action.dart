import 'package:fish_redux/fish_redux.dart';

enum LoginAction { action }

class LoginActionCreator {
  static Action onAction() {
    return const Action(LoginAction.action);
  }
}
