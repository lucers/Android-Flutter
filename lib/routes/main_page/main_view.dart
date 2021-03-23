import 'package:android_flutter/models/main_navigation_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'main_action.dart';
import 'main_state.dart';

Widget buildView(MainState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: PageView(
      controller: state.pageController,
      physics: AlwaysScrollableScrollPhysics(),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: _buildNavigationBarItems(state.navigationItems),
      onTap: (index) {
        dispatch(MainActionCreator.onNavigationItemTap(index));
      },
      currentIndex: state.currentIndex,
      selectedItemColor: state.themeColor,
    ),
  );
}

List<BottomNavigationBarItem> _buildNavigationBarItems(List<MainNavigationItem> navigationItems) {
  List<BottomNavigationBarItem> _list = [];
  navigationItems.forEach((item) {
    _list.add(BottomNavigationBarItem(icon: item.itemIcon, label: item.itemLabel));
  });
  return _list;
}
