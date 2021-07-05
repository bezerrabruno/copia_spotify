import 'package:flutter_modular/flutter_modular.dart';

import '/app/features/home/pages/library/library_page.dart';

class LibraryModule extends Module {
  @override
  List<Bind> get binds {
    return [];
  }

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/library', child: (_, args) => LibraryPage()),
      ];
}
