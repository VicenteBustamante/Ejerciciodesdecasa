import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista8 extends StatefulWidget {
  String val17;
  String val18;
  lista8(this.val17, this.val18);

  @override
  _lista8State createState() => _lista8State();
}

String picturs8 = 'assets/levantamientopiernas.jpeg';
String funcion8 =
    'Con este ejercicio, podrás terminar la fase de calentamiento en tu rutina de ejercicios para piernas y glúteos en casa. El levantamiento de piernas te permite trabajar los músculos abdominales rectos y los flexores de cadera, por lo que es un ejercicio fundamental si quieres tonificar el área abdominal';
String procedimiento8 =
    'Recuéstate boca arriba, apoyando bien la espalda y los brazos a la esterilla.Junta las piernas y levántalas lentamente, siempre unidas y lentamente para forzar el abdomen.Desciende las piernas a una velocidad controlada y no dejes que lleguen a tocar el suelo.Cuando estés a punto de tocar el suelo, vuelve a alzar las piernas. ';

class _lista8State extends State<lista8> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val17),
        subtitle: Text(widget.val18),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs8, funcion8, procedimiento8);
            },
          ));
        },
      ),
    );
  }
}
