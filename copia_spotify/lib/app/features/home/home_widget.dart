import 'package:copia_spotify/app/core/redux/app_state.dart';
import 'package:copia_spotify/app/core/redux/store.dart';
import 'package:copia_spotify/app/features/home/widgets/buttom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (context) => appStore.state.navigator.index,
      builder: (context, index) {
        return Scaffold(
          body: RouterOutlet(),
          bottomNavigationBar: ButtomBar(),
        );
      },
    );
  }
}
