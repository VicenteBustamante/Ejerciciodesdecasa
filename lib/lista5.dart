import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista5 extends StatefulWidget {
  String val11;
  String val12;
  lista5(this.val11, this.val12);

  @override
  _lista5State createState() => _lista5State();
}

String picturs5 = 'assets/Frogpump.jpg';
String funcion5 =
    'Ejercicio, así como tensar los abdominales y respirar constantemente de manera controlada. ';
String procedimiento5 =
    'La posición inicial es estar acostado boca arriba con las plantas de los pies unidas y las rodillas hacia afuera. Los brazos serán el punto de apoyo, estos deben colocarse a los lados del torso, extendidos sobre el suelo. En esta posición se debe tensar y elevar los glúteos sin perder la rectitud de la espalda y de manera lenta.';

class _lista5State extends State<lista5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val11),
        subtitle: Text(widget.val12),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs5, funcion5, procedimiento5);
            },
          ));
        },
      ),
    );
  }
}
