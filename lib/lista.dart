import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista extends StatefulWidget {
  String val1;
  String val2;
  lista(this.val1, this.val2);

  @override
  _listaState createState() => _listaState();
}

String picturs = 'assets/sentadilla.jpg';
String Funcion =
    'Las sentadillas o el squat es uno de los ejercicios de piernas más famosos. Es muy completo, nos permite trabajar distintas áreas de la pierna, y muy sencillo.®';
String procedimiento =
    'Coloca tus piernas a la altura de los hombros, flexiona las rodillas y desciende manteniendo la espalda recta. Para aumentar la dificultad, puedes emplear mancuernas o barras. ';

class _listaState extends State<lista> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val1),
        subtitle: Text(widget.val2),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs, Funcion, procedimiento);
            },
          ));
        },
      ),
    );
  }
}
