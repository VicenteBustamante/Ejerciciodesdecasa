import 'package:flutter/material.dart';

class ejercicio extends StatefulWidget {
  String ima;
  String ing;
  String pasos;
  ejercicio(this.ima, this.ing, this.pasos);

  @override
  _ejercicioState createState() => _ejercicioState();
}

class _ejercicioState extends State<ejercicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EJERCICIOS",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "EJERCICIO EN CASA",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              widget.ima,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const Text(
              'Beneficios>',
              style: TextStyle(fontSize: 16, fontFamily: 'roboto-Bold'),
            ),
            Text(
              widget.ing,
              style: const TextStyle(fontSize: 14, fontFamily: 'roboto-Italic'),
            ),
            const Text(
              'Procediemiento>',
              style: TextStyle(fontSize: 16, fontFamily: 'roboto-Bold'),
            ),
            Text(
              widget.pasos,
              style: const TextStyle(fontSize: 14, fontFamily: 'roboto-Italic'),
            ),
          ],
        ),
      ),
    );
  }
}
