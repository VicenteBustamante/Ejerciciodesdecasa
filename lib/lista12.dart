import 'package:ejercicioencasa1/ejercicio.dart';
import 'package:flutter/material.dart';

class lista12 extends StatefulWidget {
  String val25;
  String val26;
  lista12(this.val25, this.val26);

  @override
  _lista12State createState() => _lista12State();
}

String picturs12 = 'assets/hola4.jpg';
String funcion12 =
    'Este ejercicio es una ligera variación de una flexión normal.  ';
String procedimiento12 =
    'Es más que una modificación ya que la parte superior del cuerpo está más alta que la baja, ¡pero te hará sudar! Es importante que te mantengas en el metatarso del pie y actives el core. No deberías alejarte completamente de la pared, solo un poco. ';

class _lista12State extends State<lista12> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val25),
        subtitle: Text(widget.val26),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return ejercicio(picturs12, funcion12, procedimiento12);
            },
          ));
        },
      ),
    );
  }
}
