import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'login_state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Container(
      padding: EdgeInsets.only(left: 48.0, top: 70.0, right: 48.0, bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Image.asset('assets/images/icon_logo.png'),
              new Image.asset('assets/images/icon_right_sign.png'),
            ],
          ),
          Container(
            height: 60.0,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Divider(
                thickness: 3.0,
                height: 3.0,
                color: Color.fromRGBO(208, 211, 217, 1),
              ),
              TabBar(
                labelStyle: TextStyle(fontSize: 16.0),
                labelColor: Color.fromRGBO(60, 214, 163, 1),
                indicatorColor: Color.fromRGBO(60, 214, 163, 1),
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Color.fromRGBO(173, 178, 186, 1),
                tabs: state.list.map((item) => Tab(text: item.title)).toList(),
                controller: state.controller,
                indicatorWeight: 3.0,
              ),
            ],
          ),
          Container(
            height: 60.0,
          ),
          Spacer(),
          RichText(
              text: TextSpan(style: TextStyle(fontSize: 14, color: Color.fromRGBO(173, 178, 186, 1)), children: [
            TextSpan(text: '登录即代表愿意遵守'),
            TextSpan(
                text: '《用户协议》',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromRGBO(60, 214, 163, 1),
                ),
                recognizer: new TapGestureRecognizer()..onTap = () => _onUserAgreementClick()),
            TextSpan(text: '和'),
            TextSpan(
                text: '《隐私协议》',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromRGBO(60, 214, 163, 1),
                ),
                recognizer: new TapGestureRecognizer()..onTap = () => _onPrivacyAgreementClick()),
          ]))
        ],
      ),
    ),
  );
}

_onPrivacyAgreementClick() {
  print("_onPrivacyAgreementClick");
}

_onUserAgreementClick() {
  print("_onUserAgreementClick");
}
