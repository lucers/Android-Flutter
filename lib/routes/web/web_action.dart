import 'package:fish_redux/fish_redux.dart';

enum WebAction { action }

class WebActionCreator {
  static Action onAction() {
    return const Action(WebAction.action);
  }
}
