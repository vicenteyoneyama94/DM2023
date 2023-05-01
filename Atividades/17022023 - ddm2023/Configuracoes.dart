
import 'widget/calculadora.dart';

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
