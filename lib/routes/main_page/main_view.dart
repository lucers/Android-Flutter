import 'package:android_flutter/models/main_navigation_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'main_action.dart';
import 'main_state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: GestureDetector(
      onTap: () {
        dispatch(MainActionCreator.onTextTap());
        // GlobalStore.state.dispatch(GlobalActionCreator.onChangeLocal(Locale.fromSubtags(languageCode: 'zh')));
      },
      child: Center(
        child: Text(
          "Main Page",
          style: TextStyle(color: state.themeColor),
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: _buildNavigationBarItem(state.navigationItems),
      onTap: (index) {
        dispatch(MainActionCreator.onNavigationItemTap(index));
      },
      currentIndex: state.currentIndex,
      elevation: 5.0,
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      selectedItemColor: state.themeColor,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
    ),
  );
}

List<BottomNavigationBarItem> _buildNavigationBarItem(List<MainNavigationItem> navigationItems) {
  List<BottomNavigationBarItem> _list = List();
  navigationItems.forEach((item) {
    _list.add(BottomNavigationBarItem(icon: item.itemIcon, label: item.itemLabel));
  });
  return _list;
}
