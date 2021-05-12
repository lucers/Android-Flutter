import 'package:android_flutter/generated/l10n.dart';
import 'package:android_flutter/global/global_action.dart';
import 'package:android_flutter/global/global_store.dart';
import 'package:android_flutter/routes/settings_page/settings_action.dart';
import 'package:android_flutter/widget/single_line_text.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

import 'settings_state.dart';

Widget buildView(SettingsState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text(S.of(OneContext().context).settings),
        backgroundColor: state.themeColor,
      ),
      body: Container(
        child: _body(state, dispatch, viewService),
      ));
}

void changeColor(Color color) {
  GlobalStore.store.dispatch(GlobalActionCreator.onChangeThemeColor(color));
}

Widget _body(SettingsState state, dispatch, ViewService viewService) {
  if (state.data == "Column") {
    return Column(
      children: [
        Text("${state.data}"),
        GestureDetector(
          child: Text("Change to Row"),
          onTap: () => {dispatch(SettingsActionCreator.columnTap("Row"))},
        )
      ],
    );
  } else if (state.data == "Row") {
    return Row(
      children: [
        Text("${state.data}"),
        GestureDetector(
          child: Text("Change to Column"),
          onTap: () => {dispatch(SettingsActionCreator.rowTap("Haha"))},
        )
      ],
    );
  } else {
    return Container(
      child: Center(
        child: GestureDetector(
          child: SingleLineText(),
          onTap: () => {dispatch(SettingsActionCreator.rowTap("Column"))},
        ),
      ),
    );
  }
}
