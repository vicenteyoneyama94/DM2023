import 'package:fastseller_app/rota.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FastSeller'),
      ),
      body: Center(
        child: SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 600,
            child: Container(
                width: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        child: const Text('Vender'),
                        onPressed: () =>
                            Navigator.pushNamed(context, Rota.TelaVenda)
                      ),
                      ElevatedButton(
                        child: const Text('Ajustes'),
                        onPressed: () =>
                            Navigator.pushNamed(context, Rota.TelaAjuste)
                      ),
                      ElevatedButton(
                        child: const Text('Histórico'),
                        onPressed: () =>
                            Navigator.pushNamed(context, Rota.HistoricoVenda)
                      )
                    ]
                ),
            )
        ),
      ),
    );
  }
}
