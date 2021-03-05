import 'package:fish_redux/fish_redux.dart';

import 'settings_effect.dart';
import 'settings_reducer.dart';
import 'settings_state.dart';
import 'settings_view.dart';

class SettingsPage extends Page<SettingsState, Map<String, dynamic>> {
  SettingsPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SettingsState>(
                adapter: null,
                slots: <String, Dependent<SettingsState>>{
                }),
            middleware: <Middleware<SettingsState>>[
            ],);

}
