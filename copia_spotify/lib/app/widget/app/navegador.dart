import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:copia_spotify/app/redux/app/app_state.dart';
import 'package:copia_spotify/app/redux/navigator/navigator_action.dart';

class Navegador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      height: 7.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              StoreProvider.of<AppState>(context).dispatch(Page1());
            },
            child: SizedBox(
              height: double.infinity,
              width: 20.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Text(
                    'Inicio',
                    style: TextStyle(
                      fontSize: 8.5.sp,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              StoreProvider.of<AppState>(context).dispatch(Page2());
            },
            child: SizedBox(
              height: double.infinity,
              width: 20.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Text(
                    'Buscar',
                    style: TextStyle(
                      fontSize: 8.5.sp,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              StoreProvider.of<AppState>(context).dispatch(Page3());
            },
            child: SizedBox(
              height: double.infinity,
              width: 20.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.library_music_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Text(
                    'Sua Biblioteca',
                    style: TextStyle(
                      fontSize: 8.5.sp,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
