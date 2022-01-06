import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista3 extends StatefulWidget {
  String val7;
  String val8;
  lista3(this.val7, this.val8);

  @override
  _lista3State createState() => _lista3State();
}

String picturs3 = 'assets/banco.jpg';
String funcion3 =
    'En este caso emplearemos un banco o una silla para fortalecer las piernas ';
String procedimiento3 =
    'Colócate frente al banco con una pierna encima y la otra en el suelo, sube y eleva la pierna que tenías sobre el suelo. Es uno de los ejercicios de piernas más sencillos, que te ayudará a tonificar los glúteos. Puedes realizar unas diez repeticiones por cada pierna.';

class _lista3State extends State<lista3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val7),
        subtitle: Text(widget.val8),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs3, funcion3, procedimiento3);
            },
          ));
        },
      ),
    );
  }
}
