import 'package:ejercicioencasa1/bienvenida.dart';

import 'package:ejercicioencasa1/nombre.dart';
import 'package:ejercicioencasa1/titulo.dart';
import 'package:flutter/material.dart';

import 'bienvenida.dart';
import 'boton_descargadas.dart';
import 'boton_recetarapida.dart';
import 'boton_recetasencilla.dart';
import 'nombre.dart';

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ejercicio desde Casa",
            style: TextStyle(
              fontFamily: 'roboto-Italic',
              fontSize: 30,
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                ),
                accountName: const Text('Usuario: '),
                accountEmail: const Text('Correo: '),
                currentAccountPicture: CircleAvatar(
                  child: Image.asset('assets/entrenamientoencasa.png'),
                ),
                currentAccountPictureSize: const Size.square(70.0),
              ),
              ListTile(
                title: const Text('Perfil'),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Rutinas'),
                leading: const Icon(Icons.note_add),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Mapa'),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Image.asset('assets/entrenamientoencasa.png'),
            Bienvenida(usur),
            const titulo(),
            const botonrecetasencilla(),
            const botonrecetarapida(),
            const botondescargadas(),
          ],
        ),
      ),
    );
  }
}
