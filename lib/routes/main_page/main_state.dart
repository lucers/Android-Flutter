import 'package:android_flutter/generated/l10n.dart';
import 'package:android_flutter/global/global_state.dart';
import 'package:android_flutter/models/main_navigation_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

class MainState implements Cloneable<MainState>, GlobalBaseState {
  int currentIndex;
  List<MainNavigationItem> navigationItems;
  PageController pageController;
  List<Widget> pageList;

  @override
  MainState clone() {
    return MainState()
      ..currentIndex = currentIndex
      ..navigationItems = navigationItems
      ..pageController = PageController()
      ..themeColor = themeColor
      ..pageList = pageList;
  }

  @override
  Color themeColor;
}

MainState initState(Map<String, dynamic> args) {
  return MainState().clone()
    ..currentIndex = 0
    ..navigationItems = [
      new MainNavigationItem(itemIcon: Icon(Icons.home), itemLabel: S.of(OneContext().context).home),
      new MainNavigationItem(itemIcon: Icon(Icons.category), itemLabel: S.of(OneContext().context).contacts),
      new MainNavigationItem(itemIcon: Icon(Icons.account_box), itemLabel: S.of(OneContext().context).mine)
    ]
    ..pageController = PageController()
    ..pageList = [];
}
