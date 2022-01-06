import 'package:ejercicioencasa1/principal.dart';
import 'package:flutter/material.dart';

class ingresar extends StatefulWidget {
  const ingresar({Key? key}) : super(key: key);

  @override
  _ingresarState createState() => _ingresarState();
}

class _ingresarState extends State<ingresar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: RaisedButton(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          color: Colors.yellow,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(12)),
          child: const Text("Continuar"),
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Confirmacion'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const [Text('¿Desea Ingregar?')],
                      ),
                    ),
                    actions: [
                      // ignore: deprecated_member_use
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute<Null>(
                              builder: (BuildContext context) {
                                return myhome();
                              },
                            ), (Route<dynamic> route) => false);
                          },
                          child: const Text('SI')),
                      // ignore: deprecated_member_use
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('NO'))
                    ],
                  );
                });
          }),
    );
  }
}