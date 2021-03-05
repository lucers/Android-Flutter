import 'package:fish_redux/fish_redux.dart';

class WebState implements Cloneable<WebState> {

  @override
  WebState clone() {
    return WebState();
  }
}

WebState initState(Map<String, dynamic> args) {
  return WebState();
}
