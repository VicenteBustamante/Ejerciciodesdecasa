import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  const logo({Key? key}) : super(key: key);

  @override
  _logoState createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomRight,
        child: Image.asset(
          'assets/entrenamientoencasa.png',
          width: 100,
        ),
      ),
    );
  }
}
