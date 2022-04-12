import 'package:flutter/material.dart';

class HistoriasUsuarios extends StatelessWidget {
  const HistoriasUsuarios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
          return CirculosHistorias();
        },
      ),
    );
  }
}

class CirculosHistorias extends StatelessWidget {
  const CirculosHistorias({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: 
          [CircleAvatar(
            backgroundImage: AssetImage('assets/andrea.png')
            
           ,
            radius: 30,
          ),
          Text('Andrea')
        ],
      ),
    );
  }
}
