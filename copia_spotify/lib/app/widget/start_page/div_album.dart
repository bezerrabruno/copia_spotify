import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:copia_spotify/app/models/album.dart';

class DivPadrao extends StatelessWidget {
  final String title;

  final Album _album = Album(name: '"Álbum"', artist: '"Artista"');

  DivPadrao(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
      child: SizedBox(
          height: 32.5.h,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.5.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _card(context, _album),
                    _card(context, _album),
                    _card(context, _album),
                    _card(context, _album),
                    _card(context, _album),
                    _card(context, _album),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _card(BuildContext context, item) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>
              Scaffold(backgroundColor: Colors.purpleAccent),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Container(
              height: 20.h,
              width: 42.5.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/musica.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
            width: 42.5.w,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      item.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Álbum - ${item.artist}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
