import 'package:android_flutter/routes/login_page/login_state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

class LoginComponentState extends ComponentState<LoginState> with SingleTickerProviderStateMixin {
}

class CommunityComponent extends Component<LoginState> {
  @override
  LoginComponentState createState() => LoginComponentState();
}