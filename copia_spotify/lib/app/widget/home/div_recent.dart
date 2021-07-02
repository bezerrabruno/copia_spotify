import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sizer/sizer.dart';

import 'package:copia_spotify/app/models/album.dart';
import 'package:copia_spotify/app/models/primary/artist.dart';
import 'package:copia_spotify/app/models/playlist.dart';

class DivRecent extends StatelessWidget {
  final List items = [
    Artist(name: 'Zarastruta', info: ''),
    Playlist(name: 'Somente Apenas'),
    Playlist(name: 'Lo-Fi'),
    Artist(name: 'Mc Poze', info: ''),
    Album(name: 'Passaporte', artist: '', data: ''),
    Artist(name: '1Kilo', info: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
      child: SizedBox(
        height: 33.h,
        child: Column(
          children: [
            SizedBox(
              height: 8.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bem vindo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.5.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.history,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Scaffold(
                              backgroundColor: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Scaffold(
                              backgroundColor: Colors.blueAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _card(context, items[0]),
                _card(context, items[1]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _card(context, items[2]),
                _card(context, items[3]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _card(context, items[4]),
                _card(context, items[5]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context, item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: GestureDetector(
        onTap: () {
          if (item is Artist) {
            StoreProvider.of<AppState>(context).dispatch(PageArtist());
          } else if (item is Album) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    Scaffold(backgroundColor: Colors.purpleAccent),
              ),
            );
          } else if (item is Playlist) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Scaffold(
                  backgroundColor: Colors.deepOrangeAccent,
                ),
              ),
            );
          }
        },
        child: Container(
          height: 7.5.h,
          width: 47.w,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
          child: Row(
            children: [
              Container(
                height: 7.5.h,
                width: 15.5.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    bottomLeft: Radius.circular(6.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/musica.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.5.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
