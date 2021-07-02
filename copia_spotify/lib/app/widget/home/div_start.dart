import 'package:copia_spotify/app/models/album.dart';
import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sizer/sizer.dart';

import 'package:copia_spotify/app/models/primary/artist.dart';
import 'package:copia_spotify/app/page/standards/artists.dart';

class DivStart extends StatelessWidget {
  final String title;
  final type;
  final List list;

  DivStart({
    @required this.title,
    @required this.type,
    @required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
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
          (type is Artist)
              ? SizedBox(
                  height: 25.5.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, item) {
                      return _cardArtist(context, list.elementAt(item));
                    },
                  ),
                )
              : (type is Album)
                  ? SizedBox(
                      height: 27.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, item) {
                          return _cardAlbum(context, list.elementAt(item));
                        },
                      ),
                    )
                  : SizedBox(
                      height: 27.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, item) {
                          if (list.elementAt(item) is Artist) {
                            return _cardArtist(context, list.elementAt(item));
                          } else if (list.elementAt(item) is Album) {
                            return _cardAlbum(context, list.elementAt(item));
                          }
                          return SizedBox();
                        },
                      ),
                    ),
        ],
      ),
    );
  }

  Widget _cardArtist(BuildContext context, item) {
    return GestureDetector(
      onTap: () => StoreProvider.of<AppState>(context).dispatch(PageArtist()),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Container(
              height: 19.5.h,
              width: 40.w,
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
            height: 7.h,
            width: 40.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  item.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardAlbum(BuildContext context, item) {
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
              height: 19.5.h,
              width: 40.w,
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
            width: 40.w,
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
