import 'package:flutter/material.dart';

class DivPadrao extends StatelessWidget {
  final String title;

  DivPadrao(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
      child: SizedBox(
          height: 260,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _card(),
                    _card(),
                    _card(),
                    _card(),
                    _card(),
                    _card(),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _card() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/musica.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 45,
          width: 160,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '"Álbum"',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Álbum - "Artista"',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
