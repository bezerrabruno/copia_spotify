import 'package:copia_spotify/app/features/artist/artist_module.dart';
import 'package:copia_spotify/app/features/home/home_widget.dart';
import 'package:copia_spotify/app/features/home/pages/search/search_module.dart';
import 'package:copia_spotify/app/features/home/pages/start/start_module.dart';
import 'package:copia_spotify/app/features/home/redux/buttomNavigator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => ButtomNavigatorState()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => HomeWidget(),
      children: [
        ModuleRoute('/start', module: StartModule()),
        ModuleRoute('/search', module: SearchModule()),
      ],
    ),
  ];
}
