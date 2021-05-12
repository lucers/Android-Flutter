import 'package:fish_redux/fish_redux.dart';

enum EntranceAction { toNext }

class EntranceActionCreator {
  static Action toNext() {
    return Action(EntranceAction.toNext);
  }
}
