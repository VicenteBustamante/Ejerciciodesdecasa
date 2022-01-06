import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista14 extends StatefulWidget {
  String val29;
  String val30;
  lista14(this.val29, this.val30);

  @override
  _lista14State createState() => _lista14State();
}

String picturs14 = 'assets/rotacion .jpg';
String funcion14 =
    'La rotación de brazo también es un ejercicio sencillo que se puede hacer sin equipos. ';
String procedimiento14 =
    'Solo tienes que estar de pie, con los pies separados a la anchura de la cadera, y extender los brazos en un ángulo de 90 grados con respecto al cuerpo. En esa posición, realiza pequeñas rotaciones lentamente.  ';

class _lista14State extends State<lista14> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val29),
        subtitle: Text(widget.val30),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs14, funcion14, procedimiento14);
            },
          ));
        },
      ),
    );
  }
}
