import '/app/core/redux/app_state.dart';
import '../../features/home/redux/home_reducer.dart';
import '../../features/home/redux/home_action.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is HomeAction) {
    return state.update(home: homeReducer(state.home, action));
  }
  return state;
}
