import '../../features/home/redux/buttomNavigator_state.dart';

class AppState {
  ButtomNavigatorState navigator = ButtomNavigatorState();

  AppState({
    this.navigator,
  });

  factory AppState.initialState() {
    return AppState(
      navigator: ButtomNavigatorState.initialState(),
    );
  }

  AppState update({
    ButtomNavigatorState navigador,
  }) {
    return AppState(
      navigator: navigador ?? this.navigator,
    );
  }
}
