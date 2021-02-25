import 'package:fish_redux/fish_redux.dart';

import 'home_effect.dart';
import 'home_reducer.dart';
import 'home_state.dart';
import 'home_view.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> {
  HomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeState>(
                adapter: null,
                slots: <String, Dependent<HomeState>>{
                }),
            middleware: <Middleware<HomeState>>[
            ],);

}
