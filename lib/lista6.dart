import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista6 extends StatefulWidget {
  String val13;
  String val14;
  lista6(this.val13, this.val14);

  @override
  _lista6State createState() => _lista6State();
}

String picturs6 = 'assets/HipThrust.jpg';
String funcion6 =
    ' Uno de los mejores ejercicios para glúteos porque activa todos los músculos, pero se debe realizar de una forma correcta porque su mala ejecución puede generar problemas lumbares.  ';
String procedimiento6 =
    'Hay que comenzar sentados en el suelo con la espalda pegada al borde de un banco. Se deben levantar las caderas del suelo lentamente, generando extensión de caderas y los hombros deben ajustarse al banco. Los pies siempre estar separados, apoyados en el suelo. ';

class _lista6State extends State<lista6> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val13),
        subtitle: Text(widget.val14),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs6, funcion6, procedimiento6);
            },
          ));
        },
      ),
    );
  }
}
