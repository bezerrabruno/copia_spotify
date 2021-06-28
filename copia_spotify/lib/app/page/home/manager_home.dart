import 'package:copia_spotify/app/page/home/search.dart';
import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/app/store.dart';
import 'package:copia_spotify/app/widget/navegador.dart';
import 'package:flutter/material.dart';

import 'package:copia_spotify/app/page/home/start.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ManagerPage extends StatelessWidget {
  final _telas = [
    InicioPage(),
    SearchPage(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (store) => appStore.state.navigador.index,
      builder: (context, index) {
        return Scaffold(
          bottomNavigationBar: Navegador(),
          body: _telas[index],
        );
      },
    );
  }
}
