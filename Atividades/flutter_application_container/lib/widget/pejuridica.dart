import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/lista.dart';

class peJuridica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Pessoa Jurídica')),
      body: ElevatedButton(
        child: const Text('Finalizar formulário'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Lista());
          Navigator.pop(context, rota);
        },
      ),
    );
  }
}
