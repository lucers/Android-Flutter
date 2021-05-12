import 'package:fish_redux/fish_redux.dart';

class FormState implements Cloneable<FormState> {

  @override
  FormState clone() {
    return FormState();
  }
}

FormState initState(Map<String, dynamic> args) {
  return FormState();
}
