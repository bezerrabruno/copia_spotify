import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '/app/core/redux/app_state.dart';
import '/app/core/redux/store.dart';
import '/app/features/start/start_page.dart';
import '/app/features/buttomNavigator/buttomNavigator_widget.dart';
import '/app/features/artist/artists_page.dart';
import '/app/features/search/search_page.dart';

class ManagerWidget extends StatelessWidget {
  final _telas = [
    StartPage(),
    SearchPage(),
    Scaffold(),
    ArtistPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (store) => appStore.state.navigador.index,
      builder: (context, index) {
        return Scaffold(
          bottomNavigationBar: ButtomNavigator(),
          body: _telas.elementAt(index),
        );
      },
    );
  }
}
