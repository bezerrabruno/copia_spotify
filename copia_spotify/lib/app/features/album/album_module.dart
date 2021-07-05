import 'package:flutter_modular/flutter_modular.dart';
import '/app/features/album/album_page.dart';

class AlbumModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/album', child: (context, args) => AlbumPage()),
  ];
}
