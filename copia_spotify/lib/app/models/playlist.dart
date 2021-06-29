import 'package:copia_spotify/app/models/music.dart';
import 'package:copia_spotify/app/models/primary/user.dart';

class Playlist {
  final String name, creator;

  final List<Music> musics;
  final List<User> employees;

  Playlist({
    this.name,
    this.creator,
    this.musics,
    this.employees,
  });
}
