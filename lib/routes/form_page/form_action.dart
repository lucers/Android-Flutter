import 'package:fish_redux/fish_redux.dart';

enum FormAction { pop }

class FormActionCreator {
  static Action pop() {
    return const Action(FormAction.pop);
  }
}
