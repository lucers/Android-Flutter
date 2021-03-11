import 'package:android_flutter/generated/l10n.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

import 'settings_state.dart';

Widget buildView(SettingsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text(S.of(OneContext().context).settings)),
  );
}
