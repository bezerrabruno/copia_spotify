import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sizer/sizer.dart';

import 'package:copia_spotify/app/page/home/manager_home.dart';
import 'package:copia_spotify/app/redux/app/store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: appStore,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Spotify',
            home: ManagerPage(),
          );
        },
      ),
    );
  }
}
