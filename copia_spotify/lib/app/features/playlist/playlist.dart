import 'package:copia_spotify/app/features/music/music.dart';
import 'package:copia_spotify/app/core/models/user.dart';

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
