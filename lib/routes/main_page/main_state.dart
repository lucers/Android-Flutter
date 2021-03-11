import 'package:android_flutter/generated/l10n.dart';
import 'package:android_flutter/global/global_state.dart';
import 'package:android_flutter/models/main_navigation_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

class MainState implements Cloneable<MainState>, GlobalBaseState {
  int currentIndex;
  List<MainNavigationItem> navigationItems;

  @override
  MainState clone() {
    return MainState()
      ..currentIndex = currentIndex
      ..navigationItems = navigationItems
      ..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

MainState initState(Map<String, dynamic> args) {
  return MainState().clone()
    ..currentIndex = 0
    ..navigationItems = [
      new MainNavigationItem(itemIcon: Icon(Icons.home), itemLabel: S.of(OneContext().context).home),
      new MainNavigationItem(itemIcon: Icon(Icons.category), itemLabel: "Category"),
      new MainNavigationItem(itemIcon: Icon(Icons.add_shopping_cart), itemLabel: "Cart"),
      new MainNavigationItem(itemIcon: Icon(Icons.flash_auto), itemLabel: "Flash Buy"),
      new MainNavigationItem(itemIcon: Icon(Icons.account_box), itemLabel: "Account")
    ];
}
