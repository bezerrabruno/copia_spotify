import 'package:copia_spotify/app/features/artist/artist_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/features/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
      ];
}