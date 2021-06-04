import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';

class Navegador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(Page1());
                print(
                    StoreProvider.of<AppState>(context).state.navigador.index);
              }),
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(Page2());
                print(
                    StoreProvider.of<AppState>(context).state.navigador.index);
              }),
          IconButton(
              icon: Icon(
                Icons.library_music_outlined,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(Page3());
                print(
                    StoreProvider.of<AppState>(context).state.navigador.index);
              }),
        ],
      ),
    );
  }
}
