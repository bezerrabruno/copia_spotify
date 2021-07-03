import '/app/features/buttomNavigator/redux/buttomNavigator_state.dart';

class AppState {
  ButtomNavigatorState navigador = ButtomNavigatorState();

  AppState({
    this.navigador,
  });

  factory AppState.initialState() {
    return AppState(
      navigador: ButtomNavigatorState.initialState(),
    );
  }

  AppState update({
    ButtomNavigatorState navigador,
  }) {
    return AppState(
      navigador: navigador ?? this.navigador,
    );
  }
}
