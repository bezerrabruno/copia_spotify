import 'package:copia_spotify/app/redux/navigator/navigator_state.dart';

class AppState {
  NavigatorState navigador = NavigatorState();

  AppState({
    this.navigador,
  });

  factory AppState.initialState() {
    return AppState(
      navigador: NavigatorState.initialState(),
    );
  }

  AppState update({
    NavigatorState navigador,
  }) {
    return AppState(
      navigador: navigador ?? this.navigador,
    );
  }
}
