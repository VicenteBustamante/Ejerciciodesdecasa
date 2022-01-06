import 'package:flutter/material.dart';

class lista18 extends StatefulWidget {
  String val37;
  String val38;
  lista18(this.val37, this.val38);

  @override
  _lista18State createState() => _lista18State();
}

class _lista18State extends State<lista18> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val37),
        subtitle: Text(widget.val38),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {},
      ),
    );
  }
}
