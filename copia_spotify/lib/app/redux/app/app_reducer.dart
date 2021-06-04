import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is NavigatorAction) {
    return state.update(navigador: navigatorReducer(state.navigador, action));
  }
  return state;
}
