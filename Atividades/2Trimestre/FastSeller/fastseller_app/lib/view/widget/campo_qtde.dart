import 'package:flutter/material.dart';

class CampoQtde extends StatelessWidget {
  final TextEditingController controle;
  const CampoQtde({required this.controle, Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return TextFormField(
      controller: controle,
      keyboardType: TextInputType.number,
      validator: (valorDigitado){
        var msnErro = 
          ehVazio(valorDigitado);
        return msnErro;
      },
      decoration: const InputDecoration( 
        label: Text('E-mail:'),
        hintText: 'qtde@dominio.com'
      ),
    );
  }

  String? ehVazio(String? valorDigitado){
    if(valorDigitado == null || valorDigitado.isEmpty) return 'O campo é obrigatório';
    return null;
  }
}