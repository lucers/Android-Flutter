import 'package:fish_redux/fish_redux.dart';

enum MainAction {
  tapNavigationItem,
  tapText,
}

class MainActionCreator {
  static Action onNavigationItemTap(int index) {
    return Action(MainAction.tapNavigationItem, payload: index);
  }

  static Action onTextTap() {
    return Action(MainAction.tapText);
  }
}
