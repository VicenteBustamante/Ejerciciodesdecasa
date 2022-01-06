import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista15 extends StatefulWidget {
  String val31;
  String val32;
  lista15(this.val31, this.val32);

  @override
  _lista15State createState() => _lista15State();
}

String picturs15 = 'assets/saltos.jpeg';
String funcion15 =
    'Resistencia aeróbica y anaeróbica,Fuerza, principalmente del tren inferior debido a los saltos,Coordinación ';
String procedimiento15 =
    'realizar repetidos saltos de pie, en posición erguida, con una posición inicial de pies juntos y brazos pegados al cuerpo y llegando hasta juntar las manos por encima de la cabeza y mantener las piernas separadas. ';

class _lista15State extends State<lista15> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val31),
        subtitle: Text(widget.val32),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs15, funcion15, procedimiento15);
            },
          ));
        },
      ),
    );
  }
}
