import 'package:flutter/material.dart';

import 'descargadas.dart';

class botondescargadas extends StatefulWidget {
  const botondescargadas({Key? key}) : super(key: key);

  @override
  _botondescargadasState createState() => _botondescargadasState();
}

class _botondescargadasState extends State<botondescargadas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        child: const Text("Ejercicios Guardados"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return Descargadas();
            },
          ));
        },
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        color: Colors.yellow,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(15)),
      ),
    );
  }
}
