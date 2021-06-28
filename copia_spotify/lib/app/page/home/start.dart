import 'package:copia_spotify/app/widget/start_page/div_artist.dart';
import 'package:copia_spotify/app/widget/start_page/div_album.dart';
import 'package:copia_spotify/app/widget/start_page/div_random.dart';
import 'package:flutter/material.dart';

import 'package:copia_spotify/app/widget/start_page/div_recent.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          DivRecent(),
          DivPadrao('Tocadas Recentemente'),
          DivArtista('Seus artistas favoritos'),
          DivPadrao('Recomendação 1'),
          DivPadrao('Recomendação 2'),
          DivPadrao('Feito para Você'),
          DivRandom('Recomendação 3'),
        ],
      ),
    );
  }
}
