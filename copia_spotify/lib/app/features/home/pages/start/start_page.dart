import 'package:copia_spotify/app/features/playlist/model/playlist.dart';
import 'package:flutter/material.dart';

import '../../../artist/model/artist.dart';
import '../../../album/model/album.dart';
import '/app/features/home/pages/start/widgets/divStart_widget.dart';
import '/app/features/home/pages/start/widgets/divDefault_widget.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(),
        child: ListView(
          children: [
            DivStart(
              items: [
                Artist(name: 'Zarastruta', info: ''),
                Playlist(name: 'Somente Apenas'),
                Playlist(name: 'Lo-Fi'),
                Artist(name: 'Mc Poze', info: ''),
                Album(name: 'Passaporte', artist: '', data: ''),
                Artist(name: '1Kilo', info: ''),
              ],
            ),
            DivDefault(
              title: 'Tocadas Recentemente',
              type: Album,
              list: [
                Album(name: 'Test', artist: 'Test', data: ''),
                Album(name: 'Test', artist: 'Test', data: ''),
                Album(name: 'Test', artist: 'Test', data: ''),
                Album(name: 'Test', artist: 'Test', data: ''),
              ],
            ),
            DivDefault(
              title: 'Seus artistas favoritos',
              type: Artist,
              list: [
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
              ],
            ),
            DivDefault(
              title: 'Recomendação 1',
              type: Album,
              list: [
                Album(name: 'Test', artist: 'Test', data: ''),
                Album(name: 'Test', artist: 'Test', data: ''),
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
              ],
            ),
            DivDefault(
              title: 'Recomendação 2',
              type: Album,
              list: [
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
              ],
            ),
            DivDefault(
              title: 'Feito para Você',
              type: Album,
              list: [
                Artist(name: 'name', info: 'info'),
                Artist(name: 'name', info: 'info'),
                Album(name: 'Test', artist: 'Test', data: ''),
                Artist(name: 'name', info: 'info'),
              ],
            ),
            DivDefault(
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
      ),
    );
  }
}
