class NavigatorState {
  int index;

  NavigatorState({
    this.index,
  });

  factory NavigatorState.initialState() {
    return NavigatorState(
      index: 0,
    );
  }

  NavigatorState update({
    int index,
  }) {
    return NavigatorState(
      index: index ?? this.index,
    );
  }
}
