import 'package:flutter_modular/flutter_modular.dart';

import 'home_action.dart';
import 'home_state.dart';

HomeState homeReducer(HomeState state, dynamic action) {
  if (action is PageStart) {
    Modular.to.pushNamed('../start');
    return state.update(
      index: 0,
    );
  } else if (action is PageSearch) {
    Modular.to.pushNamed('../search');
    return state.update(
      index: 1,
    );
  } else if (action is PageLibrary) {
    Modular.to.pushNamed('../library');
    return state.update(
      index: 2,
    );
  }
  return state;
}
