import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:copia_spotify/app/page/home/search.dart';
import 'package:copia_spotify/app/page/home/start.dart';
import 'package:copia_spotify/app/page/standards/artists.dart';
import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/app/store.dart';
import 'package:copia_spotify/app/widget/app/navegador.dart';

class ManagerPage extends StatelessWidget {
  final _telas = [
    InicioPage(),
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
          bottomNavigationBar: Navegador(),
          body: _telas.elementAt(index),
        );
      },
    );
  }
}