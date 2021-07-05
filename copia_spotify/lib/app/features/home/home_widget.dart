import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/core/redux/app_state.dart';
import '/app/core/redux/store.dart';
import '/app/features/home/widgets/buttom_bar_widget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (context) => appStore.state.home.index,
      builder: (context, index) {
        return Scaffold(
          body: RouterOutlet(),
          bottomNavigationBar: ButtomBar(),
        );
      },
    );
  }
}
