import 'package:flutter/material.dart';

class Aplicacao2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digite os valores nos campos abaixo'),
      ),
      body: Column(children: <Widget>[
        TextField(),
      ]),
    );
  }
}
