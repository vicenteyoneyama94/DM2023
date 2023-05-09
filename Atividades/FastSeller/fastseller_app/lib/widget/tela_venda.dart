import 'package:flutter/material.dart';

class Venda extends StatelessWidget {
  const Venda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text ('Venda'),
      ),
      body: Center(
        child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Produto 1: '), print(),
          ],
        ),
      ),

    );
  }
}
