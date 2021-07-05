class HomeState {
  int index;

  HomeState({
    this.index,
  });

  factory HomeState.initialState() {
    return HomeState(
      index: 0,
    );
  }

  HomeState update({
    int index,
  }) {
    return HomeState(
      index: index ?? this.index,
    );
  }
}
