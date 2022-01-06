import 'package:flutter/material.dart';

class lista17 extends StatefulWidget {
  String val35;
  String val36;
  lista17(this.val35, this.val36);

  @override
  _lista17State createState() => _lista17State();
}

class _lista17State extends State<lista17> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        title: Text(widget.val35),
        subtitle: Text(widget.val36),
        leading: const Icon(
          Icons.fitness_center_rounded,
          color: Colors.blue,
        ),
        onTap: () {},
      ),
    );
  }
}
