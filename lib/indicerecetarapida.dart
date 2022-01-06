import 'lista10.dart';
import 'lista11.dart';
import 'lista12.dart';
import 'lista13.dart';
import 'lista14.dart';
import 'lista15.dart';
import 'lista16.dart';

import 'lista9.dart';
import 'package:flutter/material.dart';

class Recetarapida extends StatelessWidget {
  const Recetarapida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Indice",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ejercicio en casa",
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
                accountName: Text('Usuario '),
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
                title: const Text('Recetas'),
                leading: const Icon(Icons.note_add),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
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
