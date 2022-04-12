import 'package:flutter/material.dart';
import 'package:ig_app/widgets/content_user.dart';
import 'package:ig_app/widgets/custom_navigation_bar.dart';
import 'package:ig_app/widgets/historias_usuarios.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Cabecera()),
              HistoriasUsuarios(),
              Expanded(child: ScrollContent()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class ScrollContent extends StatelessWidget {
  const ScrollContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          ContentUser(),
          ContentUser(),
          ContentUser(),
          ContentUser(),
          ContentUser(),
        ],
      ),
    ]);
  }
}

class Cabecera extends StatelessWidget {
  const Cabecera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "instagram",
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        Expanded(child: Container()),
        Icon(
          Icons.add_box_outlined,
          size: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.heart_broken,
          size: 25,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.send,
          size: 25,
        ),
      ],
    );
  }
}
