import 'package:flutter/material.dart';

class confirmar extends StatefulWidget {
  const confirmar({Key? key}) : super(key: key);

  @override
  _confirmarState createState() => _confirmarState();
}

String passs = "";

class _confirmarState extends State<confirmar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextField(
        onChanged: (value) {
          passs = value;
        },
        obscureText: true,
        autocorrect: false,
        maxLength: 15,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.lock_open,
            color: Colors.yellow,
          ),
          hintText: "Verificar la contraseña",
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