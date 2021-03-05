import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'main_action.dart';
import 'main_state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Center(
      child: Text("Main Page"),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Account")
      ],
      onTap: (index) {
        _onTap(dispatch, index);
      },
      currentIndex: state.currentIndex,
      elevation: 5.0,
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
    ),
  );
}

void _onTap(Dispatch dispatch, int index) {
  dispatch(MainActionCreator.onTap(index));
}
