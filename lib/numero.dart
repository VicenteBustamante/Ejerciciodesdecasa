import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class numerotelefono extends StatefulWidget {
  const numerotelefono({Key? key}) : super(key: key);

  @override
  _numerotelefonoState createState() => _numerotelefonoState();
}

final numero = TextEditingController();
String number = "";

class _numerotelefonoState extends State<numerotelefono> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        maxLength: 10,
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.phone,
            color: Colors.yellow,
          ),
          hintText: "Telefono",
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.green)),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(r'[0-9]+|\s'),
          ),
        ],
      ),
    );
  }
}