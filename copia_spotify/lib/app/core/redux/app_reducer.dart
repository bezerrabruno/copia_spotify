import '/app/core/redux/app_state.dart';
import '/app/features/buttomNavigator/redux/buttomNavigator_action.dart';
import '/app/features/buttomNavigator/redux/buttomNavigator_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ButtomNavigatorAction) {
    return state.update(navigador: navigatorReducer(state.navigador, action));
  }
  return state;
}
