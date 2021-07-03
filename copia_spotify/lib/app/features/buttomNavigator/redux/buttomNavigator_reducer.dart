import '/app/features/buttomNavigator/redux/buttomNavigator_action.dart';
import '/app/features/buttomNavigator/redux/buttomNavigator_state.dart';

ButtomNavigatorState navigatorReducer(
    ButtomNavigatorState state, dynamic action) {
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
