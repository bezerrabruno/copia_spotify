import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_state.dart';

NavigatorState navigatorReducer(NavigatorState state, dynamic action) {
  if (action is Page1) {
    return state.update(
      index: 0,
    );
  } else if (action is Page2) {
    return state.update(
      index: 1,
    );
  } else if (action is Page3) {
    return state.update(
      index: 2,
    );
  }
  return state;
}
