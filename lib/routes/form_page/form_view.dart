import 'package:android_flutter/routes/form_page/form_action.dart';
import 'package:android_flutter/routes/form_page/form_state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide FormState;

Widget buildView(FormState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: GestureDetector(
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onTap: () => {dispatch(FormActionCreator.pop())},
      ),
      centerTitle: true,
      title: Text(
        "form",
        style: TextStyle(color: Colors.black),
      ),
    ),
    body: Container(),
  );
}
