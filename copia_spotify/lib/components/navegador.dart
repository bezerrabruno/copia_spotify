import 'package:flutter/material.dart';

class Navegador extends StatelessWidget {
  int index;
  Function onTapTela;

  Navegador(this.index, this.onTapTela);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[900],
      unselectedItemColor: Colors.grey,
      unselectedFontSize: 11,
      selectedItemColor: Colors.white,
      selectedFontSize: 11,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          activeIcon: Icon(
            Icons.home,
          ),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          activeIcon: Icon(
            Icons.search,
          ),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.collections_bookmark_outlined,
          ),
          activeIcon: Icon(
            Icons.collections_bookmark_rounded,
          ),
          label: 'Sua Biblioteca',
        ),
      ],
      currentIndex: index,
      onTap: onTapTela,
    );
  }
}
