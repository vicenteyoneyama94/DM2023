import 'package:conversoritens/widget/login.dart';
import 'package:flutter/material.dart';

class recuperarSenha extends StatelessWidget {
  const recuperarSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text ('Recuperar Senha'),
        backgroundColor: const Color.fromARGB(232, 240, 87, 87),
      ),
      body: Center(
        child: Form(

          child: Column(
            children: [

              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
              ElevatedButton(child: const Text ('Recuperar Senha'),
                  onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => Home());
                Navigator.pop(context, rota);
              })
            ],
          ),
        ),
      ),
    );
  }
}
