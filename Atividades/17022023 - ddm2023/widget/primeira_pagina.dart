import 'package:flutter/material.dart';

class PrimeiraPagina extends StatelessWidget {
  var nome = "Joao";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira página'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Nome:'),
                hintText: 'Informe seu nome'
              ),
              onChanged: (valorDigitado){
                nome = valorDigitado;
              }
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder:(context){
                    return AlertDialog(
                      title: Text('Nome:'),
                      content: Text(nome),
                    );
                  });
            },
            child: Text('Ok'))
          ],
        ),
      ),
    );
  }
}
