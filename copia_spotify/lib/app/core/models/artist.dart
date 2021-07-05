import 'package:flutter/material.dart';

import 'package:copia_spotify/app/features/album/album.dart';
import 'package:copia_spotify/app/features/music/music.dart';
import 'package:copia_spotify/app/features/playlist/playlist.dart';

class Artist {
  final String name, info;
  final int listeners;

  final List<Music> musics;
  final List<Album> albums;
  final List<Playlist> playlist;
  final List<Music> participations;

  final List<Music> popular;
  final List<Music> releases;
  final List<Album> offers;

  Artist({
    @required this.name,
    @required this.info,
    this.listeners,
    this.musics,
    this.albums,
    this.playlist,
    this.participations,
    this.popular,
    this.releases,
    this.offers,
  });
}
