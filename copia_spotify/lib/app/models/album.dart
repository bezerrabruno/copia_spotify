import 'package:flutter/material.dart';

import 'package:copia_spotify/app/models/music.dart';

class Album {
  final String name, artist, data;
  final List<Music> musics;

  Album({
    @required this.name,
    @required this.artist,
    @required this.data,
    this.musics,
  });
}
