import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

import '../../../../artist/model/artist.dart';
import '../../../../album/model/album.dart';
import '../../../../playlist/model/playlist.dart';

class DivStart extends StatelessWidget {
  final List items;

  DivStart({
    this.items,
  });

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
                        onPressed: () => true,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () => true,
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
            Modular.to.pushNamed('./artist');
          } else if (item is Album) {
            Modular.to.pushNamed('./album');
          } else if (item is Playlist) {
            Modular.to.pushNamed('./artist');
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
                    image: AssetImage('lib/app/assets/images/musica.jpg'),
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
