import 'package:flutter/material.dart';

import 'lista.dart';
import 'lista1.dart';
import 'lista10.dart';
import 'lista11.dart';
import 'lista12.dart';
import 'lista13.dart';
import 'lista14.dart';
import 'lista15.dart';
import 'lista16.dart';
import 'lista3.dart';
import 'lista4.dart';
import 'lista5.dart';
import 'lista6.dart';
import 'lista7.dart';
import 'lista8.dart';
import 'lista9.dart';

class Descargadas extends StatelessWidget {
  String receta1 = 'Arroz';
  String contenido1 = 'Facil y facil preparación';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Indice",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ejercicios Guardados",
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
                  color: Colors.green,
                ),
                accountName: const Text('Usuario '),
                accountEmail: null,
                currentAccountPicture: CircleAvatar(
                  child: Image.asset('assets/perfil.jpg'),
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
                leading: const Icon(Icons.note_add),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            lista('SENTADILLAS', 'Ejercico de pierna y gluteo'),
            lista1('ZANCADA', 'Pierna y Cintura'),
            lista3(
              'Banco',
              'Gluteos',
            ),
            lista4('Estiramiento', 'Cuerpo.'),
            lista5('Frop Pump', 'Pierna'),
            lista6('Perrito', 'Piernas'),
            lista7('Levantamiento de Pierna', 'Pierna '),
            lista8('Lagartijas ', 'Brazos'),
            lista9('Dip de triceps', 'brazo y hombro'),
            lista10('Up-downs ', 'Brazo y hombros'),
            lista11('Planchas ', 'Brazo y hombros'),
            lista12('Well push offs', 'Brazos y hombros '),
            lista13('Toque al hombro', 'Brazos y Hombros'),
            lista14('Rotaciones de Brazos', 'Brazos y Hombros'),
            lista15('Jumping Jacks', 'Brazos'),
            lista16('PLANCHA A PERRO BOCA ABAJO ', 'Brazo y Hombros'),
          ],
        ),
      ),
    );
  }
}
