import 'package:flutter/material.dart';

import 'indicerecetasencillas.dart';

class botonrecetasencilla extends StatefulWidget {
  const botonrecetasencilla({Key? key}) : super(key: key);

  @override
  _botonrecetasencillaState createState() => _botonrecetasencillaState();
}

class _botonrecetasencillaState extends State<botonrecetasencilla> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: RaisedButton(
        child: const Text("Pierna y Gluteos"),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return const Recetasencilla();
            },
            fullscreenDialog: true,
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
