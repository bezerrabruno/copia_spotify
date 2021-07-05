import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sizer/sizer.dart';

import '/app/core/redux/app_state.dart';
import '../redux/home_action.dart';

class ButtomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (store) => store.state.home.index,
      builder: (context, page) {
        return Container(
          color: Colors.grey[900],
          height: 7.h,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(PageStart());
                },
                child: SizedBox(
                  height: double.maxFinite,
                  width: 20.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      page == 0
                          ? Icon(
                              Icons.home_sharp,
                              color: Colors.white,
                              size: 30,
                            )
                          : Icon(
                              Icons.home_outlined,
                              color: Colors.grey,
                              size: 30,
                            ),
                      page == 0
                          ? Text(
                              'Inicio',
                              style: TextStyle(
                                fontSize: 8.5.sp,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              'Inicio',
                              style: TextStyle(
                                fontSize: 8.5.sp,
                                color: Colors.grey,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(PageSearch());
                },
                child: SizedBox(
                  height: double.infinity,
                  width: 20.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      page == 1
                          ? Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            )
                          : Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 30,
                            ),
                      page == 1
                          ? Text(
                              'Buscar',
                              style: TextStyle(
                                fontSize: 8.5.sp,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              'Buscar',
                              style: TextStyle(
                                fontSize: 8.5.sp,
                                color: Colors.grey,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(PageLibrary());
                },
                child: SizedBox(
                  height: double.infinity,
                  width: 20.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      page == 2
                          ? Icon(
                              Icons.library_music_rounded,
                              color: Colors.white,
                              size: 30,
                            )
                          : Icon(
                              Icons.library_music_outlined,
                              color: Colors.grey,
                              size: 30,
                            ),
                      page == 2
                          ? Text(
                              'Sua Biblioteca',
                              style: TextStyle(
                                fontSize: 8.5.sp,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              'Sua Biblioteca',
                              style: TextStyle(
                                fontSize: 8.5.sp,
                                color: Colors.grey,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
