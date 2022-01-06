import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista16 extends StatefulWidget {
  String val33;
  String val34;
  lista16(this.val33, this.val34);

  @override
  _lista16State createState() => _lista16State();
}

String picturs16 = 'assets/pico.jpeg';
String funcion16 =
    'De hecho es un ejercicio para calentar antes de que empieces tu entreno. ';
String procedimiento16 =
    'Este ejercicio es un pequeño paso en el camino de dominar las flexiones haciendo el pino y es genial para los deltoides anteriores y medios ';

class _lista16State extends State<lista16> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val33),
        subtitle: Text(widget.val34),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs16, funcion16, procedimiento16);
            },
          ));
        },
      ),
    );
  }
}
