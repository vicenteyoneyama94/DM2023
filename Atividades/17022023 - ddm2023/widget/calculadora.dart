import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {

  String numero1 = "";
  String numero2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            decoration: InputDecoration(label: Text(numero1)),
          ),
          TextField(
            decoration: InputDecoration(label: Text(numero2))
          ),
          ElevatedButton(
            onPressed: onPressed, child: )
        ],
      )),
    );
  }
}
