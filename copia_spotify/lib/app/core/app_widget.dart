import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:sizer/sizer.dart';

import '/app/core/redux/store.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: appStore,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Spotify',
            initialRoute: '/home/start',
          ).modular();
        },
      ),
    );
  }
}
