import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_1/entidade/pessoa.dart';

class Formulario extends StatelessWidget {
  var keyForm = GlobalKey<FormState>();
  var editorNome = TextEditingController();
  var editorSobrenome = TextEditingController();
  var editorTelefone = TextEditingController();
  var editorCPF = TextEditingController();
  Pessoa pessoa = new Pessoa();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Form(
        key: keyForm,
        child: Column(
          children: [
            TextFormField(
                controller: editorNome,
                decoration: InputDecoration(
                    label: Text('Nome:'),
                    hintText: 'Informe o seu nome.'),
                validator: (valorDigitado) {
                  if (valorDigitado == null || valorDigitado.isEmpty) {
                    return 'o campo é obrigatorio';
                  }
                  return null;
                }),
            TextFormField(
                controller: editorSobrenome,
                decoration: InputDecoration(
                  label: Text('Sobrenome'),
                  hintText: 'Informe o sobrenome',
                ),
                validator: (valorDigitado) {
                  if (valorDigitado == null || valorDigitado.isEmpty) {
                    return 'o campo é obrigatório';
                  }
                  return null;
                }),
            TextFormField(
              controller: editorTelefone,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('Telefone'),
                hintText: 'Infome o telefone',
              ),
              validator: (valorDigitado){
                if (valorDigitado == null || valorDigitado.isEmpty){
                  return 'o campo é obrigatório';
                }
                return null;
              }
            ),
            TextFormField(
              controller: editorCPF,
              decoration: InputDecoration(
                label: Text('CPF'),
                hintText: 'Informe o telefone',
              ),
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.isEmpty){
                  return 'o campo é obrigatório';
                }
                return null;
              }
            ),
            ElevatedButton(
                onPressed: () {
                  if (keyForm.currentState!.validate() ) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                        content: Text(editorNome.text)));
                  }
                },
                child: Text('ok'))
          ],
        ),
      ),
    );
  }
}
