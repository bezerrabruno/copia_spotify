import 'package:flutter_modular/flutter_modular.dart';

import '/app/features/home/pages/start/start_page.dart';
import '/app/features/album/album_page.dart';
import '/app/features/artist/artists_page.dart';

class StartModule extends Module {
  @override
  List<Bind> get binds {
    return [];
  }

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/start', child: (_, args) => StartPage()),
        ChildRoute('/artist', child: (_, args) => ArtistPage()),
        ChildRoute('/album', child: (_, args) => AlbumPage()),
      ];
}
