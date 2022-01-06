import 'package:flutter/material.dart';

class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  _passwordState createState() => _passwordState();
}

final pass = TextEditingController();
String contra = "";

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextField(
        onChanged: (texto) {
          contra = texto;
        },
        obscureText: true,
        autocorrect: false,
        maxLength: 15,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.yellow,
          ),
          hintText: "Contraseña",
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