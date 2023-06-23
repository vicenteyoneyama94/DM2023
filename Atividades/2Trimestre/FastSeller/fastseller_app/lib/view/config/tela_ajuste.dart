import 'package:fastseller_app/rota.dart';
import 'package:flutter/material.dart';

class TelaAjuste extends StatelessWidget {
  const TelaAjuste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    child: Text ('Comida'),
                    onPressed: () =>
                        Navigator.pushNamed(context, Rota.ListaComida)
                  ),
                ),
              ),
            SizedBox(
              width: 100,
              child: Container(
                child: ElevatedButton(
                    child: Text ('Bebida'),
                    onPressed: () =>
                        Navigator.pushNamed(context, Rota.ListaBebida)
                ),
              ),
            ),

            SizedBox(

              width: 200,
              child: Container(
                child: ElevatedButton(
                    child: Text ('Forma de Pagamento'),
                    onPressed: () =>
                        Navigator.pushNamed(context, Rota.FormaPagamento)

              )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
