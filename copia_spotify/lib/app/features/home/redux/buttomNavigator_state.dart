class ButtomNavigatorState {
  int index;

  ButtomNavigatorState({
    this.index,
  });

  factory ButtomNavigatorState.initialState() {
    return ButtomNavigatorState(
      index: 0,
    );
  }

  ButtomNavigatorState update({
    int index,
  }) {
    return ButtomNavigatorState(
      index: index ?? this.index,
    );
  }
}
