import 'package:android_flutter/generated/l10n.dart';
import 'package:android_flutter/models/tab_model.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:one_context/one_context.dart';

import 'login_action.dart';
import 'login_state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    Lifecycle.initState: init,
  });
}

void init(Action action, Context<LoginState> context) {
  List<TabModel> tabList = new List<TabModel>();
  tabList.add(TabModel(title: S.of(OneContext().context).normal_login, tabId: 0));
  tabList.add(TabModel(title: S.of(OneContext().context).quick_login, tabId: 1));

  final TickerProvider tickerProvider = context.stfState as TickerProvider;
  var _controller = TabController(vsync: tickerProvider, length: tabList.length);

  context.dispatch(LoginActionCreator.onChangeTabListAction({'tab': tabList, 'control': _controller}));
}
