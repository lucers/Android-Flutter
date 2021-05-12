import 'package:fish_redux/fish_redux.dart';

import 'entrance_effect.dart';
import 'entrance_reducer.dart';
import 'entrance_state.dart';
import 'entrance_view.dart';

class EntrancePage extends Page<EntranceState, Map<String, dynamic>> {
  EntrancePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<EntranceState>(adapter: null, slots: <String, Dependent<EntranceState>>{}),
          middleware: <Middleware<EntranceState>>[],
        );
}
