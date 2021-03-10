import 'package:flutter/material.dart';

import 'package:copia_spotify/page/home.dart';

void main() {
  runApp(SpotifyCopiaApp());
}

class SpotifyCopiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      home: StakPage(),
    );
  }
}
