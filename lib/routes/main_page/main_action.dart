import 'package:fish_redux/fish_redux.dart';

enum MainAction { tapIndex }

class MainActionCreator {
  static Action onTap(int index) {
    return Action(MainAction.tapIndex, payload: index);
  }
}
