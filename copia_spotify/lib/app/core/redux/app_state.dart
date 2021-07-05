import '../../features/home/redux/home_state.dart';

class AppState {
  HomeState home = HomeState();

  AppState({
    this.home,
  });

  factory AppState.initialState() {
    return AppState(
      home: HomeState.initialState(),
    );
  }

  AppState update({
    HomeState home,
  }) {
    return AppState(
      home: home ?? this.home,
    );
  }
}
