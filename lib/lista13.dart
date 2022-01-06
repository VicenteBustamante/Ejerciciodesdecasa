import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista13 extends StatefulWidget {
  String val27;
  String val28;
  lista13(this.val27, this.val28);

  @override
  _lista13State createState() => _lista13State();
}

String picturs13 = 'assets/hombro.jpg';
String funcion13 =
    'Los toques de hombro son un poco más intensos que realizar una “plancha” tradicional, ya que estás cambiando continuamente tu peso corporal, pero los resultados en tus hombros bien valen el esfuerzo adicional. ';
String procedimiento13 =
    'Comienza por ponerte en una posición de flexión. Coloca tus manos en el suelo separadas al ancho de tus hombros. Mantén tu espalda recta. Cuando estés listo, levanta la mano izquierda del suelo y úsala para tocar tu hombro derecho. Tráela nuevamente al suelo para estabilizar tu cuerpo. Ahora levanta la mano derecha y toca tu hombro izquierdo. ';

class _lista13State extends State<lista13> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val27),
        subtitle: Text(widget.val28),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs13, funcion13, procedimiento13);
            },
          ));
        },
      ),
    );
  }
}
