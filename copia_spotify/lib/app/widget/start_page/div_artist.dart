import 'package:copia_spotify/app/models/artist.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DivArtista extends StatelessWidget {
  final String title;

  final Artist _artist = Artist(name: '"Artista"');

  DivArtista(
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 16.0),
      child: SizedBox(
          height: 30.5.h,
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
                      fontSize: 18.5.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.7.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _card(context, _artist),
                    _card(context, _artist),
                    _card(context, _artist),
                    _card(context, _artist),
                    _card(context, _artist),
                    _card(context, _artist),
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
              Scaffold(backgroundColor: Colors.blueGrey),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16.0, 0),
            child: Container(
              height: 20.h,
              width: 41.w,
              decoration: ShapeDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('images/musica.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: CircleBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 5.5.h,
            width: 41.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  item.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.5.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
