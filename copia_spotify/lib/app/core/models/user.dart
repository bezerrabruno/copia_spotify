import 'package:copia_spotify/app/features/music/model/music.dart';
import 'package:copia_spotify/app/features/playlist/model/playlist.dart';
import 'package:copia_spotify/app/features/artist/model/artist.dart';

class User {
  final String name;
  final int followers, following;

  final String email;
  final String password;

  final List<Playlist> playlist;
  final List<Artist> recordArtist;
  final List<Music> recordMusic;

  User(
    this.name,
    this.followers,
    this.following,
    this.email,
    this.password,
    this.playlist,
    this.recordArtist,
    this.recordMusic,
  );
}
