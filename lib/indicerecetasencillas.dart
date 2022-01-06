import 'lista.dart';
import 'lista1.dart';

import 'lista3.dart';
import 'lista4.dart';
import 'lista5.dart';
import 'lista6.dart';
import 'lista7.dart';
import 'lista8.dart';

import 'package:flutter/material.dart';

class Recetasencilla extends StatefulWidget {
  const Recetasencilla({Key? key}) : super(key: key);

  @override
  _RecetasencillaState createState() => _RecetasencillaState();
}

class _RecetasencillaState extends State<Recetasencilla> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Indice",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Pierna y Gluteos",
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
                accountName: const Text('Usuario '),
                accountEmail: null,
                currentAccountPicture: CircleAvatar(
                  child: Image.asset('assets/login.png'),
                ),
                currentAccountPictureSize: const Size.square(72.0),
              ),
              ListTile(
                title: const Text('Perfil'),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Ejercicios'),
                leading: const Icon(Icons.fitness_center_rounded),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            lista('SENTADILLAS', 'Pierna y Gluteos'),
            lista1('ZANCADA', 'Pierna y Cintura'),
            lista3(
              'Banco',
              'Gluteos',
            ),
            lista4('Estiramiento', 'Cuerpo.'),
            lista5('Frop Pump', 'Pierna'),
            lista6('Perrito', 'Pierna'),
            lista7('Levantamiento de Pierna', 'Pierna '),
            lista8('Ejercicio ', 'Cuerpo'),
          ],
        ),
      ),
    );
  }
}
