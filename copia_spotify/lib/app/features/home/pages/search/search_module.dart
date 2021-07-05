import 'package:copia_spotify/app/features/home/pages/search/search_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '/app/features/home/pages/start/start_page.dart';

class SearchModule extends Module {
  @override
  List<Bind> get binds {
    return [];
  }

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/search', child: (_, args) => SearchPage()),
      ];
}
