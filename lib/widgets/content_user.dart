import 'package:flutter/material.dart';

class ContentUser extends StatelessWidget {
  const ContentUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          CabeceraContent(),
          Image(image: AssetImage('assets/meme.png')),
          ReaccionesUsers(),
          ComentariosUser(),
        ],
      ),
    );
  }
}

class ComentariosUser extends StatelessWidget {
  const ComentariosUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Le gusta a'),
              SizedBox(
                width: 3,
              ),
              Text(
                'Andrea76',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' y'),
              SizedBox(
                width: 3,
              ),
              Text(
                'otras personas más',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text('Ver los 82 comentarios'),
          Text(
            'Hace 27 minutos',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class ReaccionesUsers extends StatelessWidget {
  const ReaccionesUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(Icons.heart_broken),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.comment_bank_rounded),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.send),
          Expanded(child: Container()),
          Icon(Icons.task_outlined),
        ],
      ),
    );
  }
}

class CabeceraContent extends StatelessWidget {
  const CabeceraContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage('assets/andrea.png'),
        ),
        Text('El Guarromantico_'),
        Expanded(child: Container()),
        Icon(Icons.format_align_justify_rounded)
      ],
    );
  }
}
