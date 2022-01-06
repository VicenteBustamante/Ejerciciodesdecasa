import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista1 extends StatefulWidget {
  String val3;
  String val4;
  lista1(this.val3, this.val4);

  @override
  _lista1State createState() => _lista1State();
}

//bolas arroz
String picturs1 = 'assets/zancada.jpg';
String funcion1 =
    'Es una variante de las sentadillas donde trabajamos cada pierna de forma individual.' +
        'Sin duda es uno de los ejercicios de piernas más útiles para tonificar esta parte de tu cuerpo ';
String procedimiento1 =
    'Manteniendo la postura del ejercicio anterior, daremos un salto hacia delante con uno de los pies, flexionando a la vez la otra pierna hasta casi tocar el suelo. Da otro salto para regresar a la posición inicial y repite el proceso con la otra pierna. ';

class _lista1State extends State<lista1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val3),
        subtitle: Text(widget.val4),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs1, funcion1, procedimiento1);
            },
          ));
        },
      ),
    );
  }
}
