import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {
  const CustomBottonNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        /*   backgroundColor: Color.fromRGBO(55, 57, 84, 1), */
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Grafica'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_rounded),
              label: 'Usuarios'),
              BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_sharp),
              label: 'Usuarios'),
              BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: 'Usuarios'),
        ]);
  }
}
