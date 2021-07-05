import 'package:copia_spotify/app/features/artist/artists_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ArtistModule extends Module {
  @override
  List<Bind> get binds {
    return [];
  }

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/artist', child: (_, args) => ArtistPage()),
      ];
}
