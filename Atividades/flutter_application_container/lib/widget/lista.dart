import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/detalhes.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('lista')),
      body: ElevatedButton(
        child: const Text('Detalhes'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) {
            return Detalhes();
          });
        },
      ),
    );
  }
}
