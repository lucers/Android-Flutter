import 'package:fish_redux/fish_redux.dart';

enum EntranceAction { action }

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }
}
