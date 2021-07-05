import 'package:flutter_modular/flutter_modular.dart';

import '../../home/redux/buttomNavigator_action.dart';
import '../../home/redux/buttomNavigator_state.dart';

ButtomNavigatorState navigatorReducer(
    ButtomNavigatorState state, dynamic action) {
  if (action is PageStart) {
    Modular.to.navigate('../start');
    return state.update(
      index: 0,
    );
  } else if (action is PageSearch) {
    Modular.to.navigate('../search');
    return state.update(
      index: 1,
    );
  } else if (action is PageLibrary) {
    Modular.to.navigate('../start');
    return state.update(
      index: 2,
    );
  } else if (action is PageArtist) {
    Modular.to.navigate('../artist');
    return state.update(
      index: 3,
    );
  }
  return state;
}
