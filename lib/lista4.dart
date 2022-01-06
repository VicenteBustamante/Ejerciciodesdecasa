import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista4 extends StatefulWidget {
  String val9;
  String val10;
  lista4(this.val9, this.val10);

  @override
  _lista4State createState() => _lista4State();
}

String picturs4 = 'assets/pienaesti.jpg';
String funcion4 =
    'Una parte muy importante del ejercicio físico son los estiramientos, porque nos ayudan a recuperar el cuerpo tras la práctica deportiva.  ';
String procedimiento4 =
    'Puedes emplear ejercicios de piernas para estirar la zona de los gemelos, los isquiotibiales, los cuádriceps y glúteos.';

class _lista4State extends State<lista4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val9),
        subtitle: Text(widget.val10),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs4, funcion4, procedimiento4);
            },
          ));
        },
      ),
    );
  }
}
