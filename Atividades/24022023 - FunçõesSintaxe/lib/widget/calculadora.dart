import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  String numero1 = "";
  double? resultado;
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
            onChanged: (value) {
              numero1 = value;
            },
            decoration: InputDecoration(label: Text(numero1)),
          ),
          TextField(
              onChanged: (value) {
                numero2 = value;
              },
              decoration: InputDecoration(label: Text(numero2))),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Resultado: "),
                        content: Text(
                            "${double.parse(numero1) + double.parse(numero2)}"),
                      );
                    });
              },
              child: Text("Somar")),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          title: Text("Resultado: "),
                          content: Text(
                              "${double.parse(numero1) - double.parse(numero2)}"));
                    });
              },
              child: Text("Subtrair"))
        ],
      )),
    );
  }
}
