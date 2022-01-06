import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bienvenida.dart';

class camponombre extends StatefulWidget {
  const camponombre({Key? key}) : super(key: key);

  @override
  _camponombreState createState() => _camponombreState();
}

String usur = "";

class _camponombreState extends State<camponombre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextField(
        onChanged: (texto) {
          usur = texto;
          Bienvenida(usur);
        },
        autocorrect: true,
        textCapitalization: TextCapitalization.sentences,
        maxLength: 50,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.person,
            color: Colors.yellow,
          ),
          hintText: "Nombre del usuario",
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.green)),
        ),
      ),
    );
  }
}