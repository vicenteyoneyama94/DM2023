import 'package:fastseller_app/rota.dart';
import 'package:flutter/material.dart';

class telaAjuste extends StatelessWidget {
  const telaAjuste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              child: Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    child: Text ('Comida'),
                    onPressed: () =>
                        Navigator.pushNamed(context, Rota.ajusteComida)
                  ),
                ),
              ),
            SizedBox(
              width: 100,
              child: Container(
                child: ElevatedButton(
                    child: Text ('Bebida'),
                    onPressed: () =>
                        Navigator.pushNamed(context, Rota.ajusteBebida)
                ),
              ),
            ),

            SizedBox(

              width: 300,
              child: Container(
                color: Colors.orange,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                    ),
                    child: Text ('Forma de Pagamento'),
                    onPressed: () =>
                        Navigator.pushNamed(context, Rota.formaPagamento)

              )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
