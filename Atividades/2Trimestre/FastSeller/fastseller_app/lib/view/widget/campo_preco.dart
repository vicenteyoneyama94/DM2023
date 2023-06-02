import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore: use_key_in_widget_constructors
class CampoPreco extends StatelessWidget {
  final mascara = 'Preco: ';
  final TextEditingController controle;
  const CampoPreco({required this.controle, Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return TextFormField(
      controller: controle,
      keyboardType: TextInputType.number,
      inputFormatters: [MaskTextInputFormatter(mask: mascara)],
      validator: (valorDigitado) => ehVazio(valorDigitado),
      decoration: const InputDecoration( 
        label: Text('preco:'),
        hintText: 'Digite o preço:'
      ),
    );
  }

  String? ehVazio(String? valorDigitado){
    if(valorDigitado == null || valorDigitado.isEmpty) return 'O campo é obrigatório';
    return null;
  }
}