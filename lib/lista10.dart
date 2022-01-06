import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista10 extends StatefulWidget {
  String val21;
  String val22;
  lista10(this.val21, this.val22);

  @override
  _lista10State createState() => _lista10State();
}

String picturs10 = 'assets/hola2.jpg';
String funcion10 =
    'Este ejercicio no sólo es bueno para tus brazos, sino para todo el cuerpo en general. Es particularmente bueno para los músculos del core. ';
String procedimiento10 =
    'Empieza en posición de plank y luego levántate poniendo primero una mano en el suelo y luego la otra. Después vuelve a apoyar los brazos como al principio. Además de trabajar los brazos, también trabajas los abdominales, los glúteos y las piernas';

class _lista10State extends State<lista10> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val21),
        subtitle: Text(widget.val22),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs10, funcion10, procedimiento10);
            },
          ));
        },
      ),
    );
  }
}
