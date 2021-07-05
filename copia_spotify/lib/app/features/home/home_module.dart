import 'package:flutter_modular/flutter_modular.dart';

import '/app/features/home/home_widget.dart';
import '/app/features/home/pages/search/search_module.dart';
import '/app/features/home/pages/library/library_module.dart';
import '/app/features/home/pages/start/start_module.dart';
import 'redux/home_state.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeState()),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => HomeWidget(),
      children: [
        ModuleRoute('/start', module: StartModule()),
        ModuleRoute('/search', module: SearchModule()),
        ModuleRoute('/library', module: LibraryModule()),
      ],
    ),
  ];
}
