import '/app/core/redux/app_state.dart';
import '../../features/home/redux/buttomNavigator_action.dart';
import '../../features/home/redux/buttomNavigator_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ButtomNavigatorAction) {
    return state.update(navigador: navigatorReducer(state.navigator, action));
  }
  return state;
}
