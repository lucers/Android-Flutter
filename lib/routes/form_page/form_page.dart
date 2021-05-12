import 'package:fish_redux/fish_redux.dart';

import 'form_effect.dart';
import 'form_reducer.dart';
import 'form_state.dart';
import 'form_view.dart';

class FormPage extends Page<FormState, Map<String, dynamic>> {
  FormPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<FormState>(adapter: null, slots: <String, Dependent<FormState>>{}),
          middleware: <Middleware<FormState>>[],
        );
}
