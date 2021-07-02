import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_state.dart';

NavigatorState navigatorReducer(NavigatorState state, dynamic action) {
  if (action is PageStart) {
    return state.update(
      index: 0,
    );
  } else if (action is PageSearch) {
    return state.update(
      index: 1,
    );
  } else if (action is PageLibrary) {
    return state.update(
      index: 2,
    );
  } else if (action is PageArtist) {
    return state.update(
      index: 3,
    );
  }
  return state;
}
