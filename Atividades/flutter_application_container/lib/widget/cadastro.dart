import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/lista.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: ElevatedButton(
        child: const Text('Lista'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) {
            return Lista();
          });
        },
      ),
    );
  }
}
