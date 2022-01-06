import 'package:flutter/material.dart';

import 'continuar.dart';
import 'contraseña.dart';
import 'correo.dart';
import 'nombre.dart';
import 'numero.dart';
import 'omitir.dart';
class formulario extends StatefulWidget {
  const formulario({Key? key}) : super(key: key);

  @override
  _formularioState createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  String val = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Usuario",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login Usuario",
            style: TextStyle(
              fontFamily: 'roboto-Italic',
              fontSize: 30,
            ),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/login2.jpg',
              width: 50,
              alignment: Alignment.topLeft,
            ),
            camponombre(),
            numerotelefono(),
            password(),
            confirmar(),
            ingresar(),
            Boton_omitir(),
          ],
        ),
      ),
    );
  }
}