import 'package:flutter/material.dart';

import 'package:copia_spotify/components/inicio_page/div_1.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: [
        Div1(),
        card2(180, 'Tocadas Recentemente'),
        card2(180, 'Seus programas mais escutados'),
        card2(180, 'Recomendação 1'),
        card2(180, 'Recomendação 2'),
        card2(180, 'Feito para Você'),
        card2(180, 'Recomendação 3'),
        card2(180, 'Recomendação 4'),
        card2(180, 'Suas playlists'),
        card2(180, 'Recomendação 5'),
        card2(180, 'Recomendação 6'),
      ]),
    );
  }

  Widget card22() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SizedBox(
          width: 150,
          child: Card(
            color: Colors.blue,
          )),
    );
  }

  Widget card2(double tamanho, String titulo) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
          height: 220,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    titulo,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: tamanho,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    card22(),
                    card22(),
                    card22(),
                    card22(),
                    card22(),
                    card22(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
