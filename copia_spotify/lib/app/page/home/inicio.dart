import 'package:copia_spotify/app/widget/inicio_page/div_artistas.dart';
import 'package:copia_spotify/app/widget/inicio_page/div_padrao.dart';
import 'package:flutter/material.dart';

import 'package:copia_spotify/app/widget/inicio_page/div_recentes.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          DivRecentes(),
          DivPadrao('Tocadas Recentemente'),
          DivArtista('Seus artistas favoritos'),
          DivPadrao('Recomendação 1'),
          DivPadrao('Recomendação 2'),
          DivPadrao('Feito para Você'),
        ],
      ),
    );
  }
}
