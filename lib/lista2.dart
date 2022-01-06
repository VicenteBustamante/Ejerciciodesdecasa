import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista2 extends StatefulWidget {
  String val5;
  String val6;
  lista2(this.val5, this.val6);

  @override
  _lista2State createState() => _lista2State();
}

String picturs2 = 'assets/puente.png';
String funcion2 = 'Se centra en potenciar el área de los glúteos. ';
String procedimiento2 =
    'Tumbados, con la espalda y los brazos pegados al suelo y las rodillas flexionados, elevaremos los glúteos y los mantendremos unos segundos en el aíre, compasando la respiración con el movimiento.' +
        'Repite el proceso unas diez veces.';

class _lista2State extends State<lista2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val5),
        subtitle: Text(widget.val6),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs2, funcion2, procedimiento2);
            },
          ));
        },
      ),
    );
  }
}
