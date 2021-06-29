import 'package:copia_spotify/app/models/album.dart';
import 'package:copia_spotify/app/models/primary/artist.dart';
import 'package:flutter/material.dart';

import 'package:copia_spotify/app/widget/home/div_start.dart';
import 'package:copia_spotify/app/widget/home/div_recent.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          DivRecent(),
          DivStart(
            title: 'Tocadas Recentemente',
            type: Album,
            list: [
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
            ],
          ),
          DivStart(
            title: 'Seus artistas favoritos',
            type: Artist,
            list: [
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
            ],
          ),
          DivStart(
            title: 'Recomendação 1',
            type: Album,
            list: [
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
            ],
          ),
          DivStart(
            title: 'Recomendação 2',
            type: Album,
            list: [
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
            ],
          ),
          DivStart(
            title: 'Feito para Você',
            type: Album,
            list: [
              Artist(name: 'name', info: 'info'),
              Artist(name: 'name', info: 'info'),
              Album(name: 'Test', artist: 'Test', data: ''),
              Artist(name: 'name', info: 'info'),
            ],
          ),
          DivStart(
            title: 'Recomendação 3',
            type: '',
            list: [
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
              Album(name: 'Test', artist: 'Test', data: ''),
            ],
          ),
        ],
      ),
    );
  }
}
