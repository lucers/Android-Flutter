import 'package:fish_redux/fish_redux.dart';

import 'web_effect.dart';
import 'web_reducer.dart';
import 'web_state.dart';
import 'web_view.dart';

class WebPage extends Page<WebState, Map<String, dynamic>> {
  WebPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<WebState>(
                adapter: null,
                slots: <String, Dependent<WebState>>{
                }),
            middleware: <Middleware<WebState>>[
            ],);

}
