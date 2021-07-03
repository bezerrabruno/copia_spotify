import 'package:redux/redux.dart';

import '/app/core/redux/app_state.dart';
import '/app/core/redux/app_reducer.dart';

Store<AppState> appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initialState(),
);
