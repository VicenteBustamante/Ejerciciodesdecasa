import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista7 extends StatefulWidget {
  String val15;
  String val16;
  lista7(this.val15, this.val16);

  @override
  _lista7State createState() => _lista7State();
}

String picturs7 = 'assets/perrito.jpg';
String funcion7 = 'Ayuda al aumento de los gluteos ';
String procedimiento7 =
    'Se debe tener una posición cuadrupedia, es decir, las rodillas y manos en el suelo. Estas últimas deben estar abiertas y alineadas justo bajo los hombros. Se debe levantar la pierna derecha con la rodilla doblada en un ángulo de 90 grados. La espalda debe estar siempre recta y una vez finalizado el ejercicio se debe alternar con la otra pierna, la izquierda.';

class _lista7State extends State<lista7> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val15),
        subtitle: Text(widget.val16),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs7, funcion7, procedimiento7);
            },
          ));
        },
      ),
    );
  }
}
