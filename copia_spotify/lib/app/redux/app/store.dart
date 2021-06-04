import 'package:redux/redux.dart';

import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/app/app_reducer.dart';

Store<AppState> appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initialState(),
);
