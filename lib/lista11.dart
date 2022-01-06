import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista11 extends StatefulWidget {
  String val23;
  String val24;
  lista11(this.val23, this.val24);

  @override
  _lista11State createState() => _lista11State();
}

String picturs11 = 'assets/plancha.jpg';
String ingredientes11 =
    'Las flexiones son uno de los mejores ejercicios que puedes hacer con el propio peso y son el ejercicio de brazos perfecto.   ';
String funcion11 =
    'Puedes elegir entre montones de variedades y ajustar el nivel de dificultad. Si estás empezando es mejor que empieces apoyando las rodillas. Poner las manos juntas trabaja los brazos, mientras que si las separas más trabajarás más el pecho. Activa el core para fortalecer también los músculos abdominales. ';

class _lista11State extends State<lista11> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val23),
        subtitle: Text(widget.val24),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs11, ingredientes11, funcion11);
            },
          ));
        },
      ),
    );
  }
}
