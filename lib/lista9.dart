import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista9 extends StatefulWidget {
  String va19;
  String val20;
  lista9(this.va19, this.val20);

  @override
  _lista9State createState() => _lista9State();
}

String picturs9 = 'assets/hola.jpg';
String funcion9 =
    'Son uno de los ejercicios más efectivos para aumentar masa muscular del trícpes. Usaremos nuestro peso corporal para que cuánto más trabaje el músculo más fibras musculares se recluten, y ese es el objetivo que buscamos. ';
String procedimiento9 =
    'Podemos hacerlo apoyando la planta de los pies en el suelo, para hacerlo más fácil e ir subiendo el nivel estirando las piernas o incluso elevándolas para hacerlo más duro y efectivo. La altura debe ser similar a la de una silla para poder realizar el recorrido completo y así trabajar los tríceps al completo. ';

class _lista9State extends State<lista9> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.va19),
        subtitle: Text(widget.val20),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs9, funcion9, procedimiento9);
            },
          ));
        },
      ),
    );
  }
}
