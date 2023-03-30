import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/calculadora.dart';
import 'package:flutter_application_1/widget/primeira_pagina.dart';

class Configuracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aula',
        theme: ThemeData(primarySwatch: Colors.red),
        home: Calculadora());
  }
}
