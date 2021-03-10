import 'package:copia_spotify/components/navegador.dart';
import 'package:flutter/material.dart';

import 'package:copia_spotify/page/inicio.dart';

class StakPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StakPageState();
  }
}

class StakPageState extends State<StakPage> {
  int _index = 0;

  final _telas = [
    InicioPage(),
    Scaffold(),
    Scaffold(),
  ];

  void _onTapTela(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navegador(_index, _onTapTela),
      body: _telas[_index],
    );
  }
}
