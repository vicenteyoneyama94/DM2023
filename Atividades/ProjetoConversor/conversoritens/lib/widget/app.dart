import 'package:flutter/material.dart';

import 'login.dart';

class Structure extends StatelessWidget {
  const Structure({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lista de Compras',
      home: Home(),
    );
  }
}
