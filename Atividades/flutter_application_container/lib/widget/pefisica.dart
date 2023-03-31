import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/lista.dart';

class peFisica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pessoa Fisica')),
      body: ElevatedButton(
        child: const Text('Finalizar formulário'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Lista());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}
