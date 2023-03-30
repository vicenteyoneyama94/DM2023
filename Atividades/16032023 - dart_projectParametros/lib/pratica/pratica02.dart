class Estado {
  final String nome;
  final String sigla;
  final Function calcularPIB;
  Estado({required this.nome, required this.sigla, required this.calcularPIB});
}

class Cidade {
  final String nome;
  final Estado estado;
  final Function calcularDensidadeDemografica;
  Cidade(
      {required this.nome,
      required this.estado,
      required this.calcularDensidadeDemografica});
}

void main(List<String> arguments) {
  /*
  exercício 01 - criar um objeto do tipo Cidade
  com referência anônima na interpolação da função print. 
  Defina mais que um comando para cada FN.
  → criar e entender a sintaxe de uma função anônima
  → entenda quando utilizar ";" e ","

  
  exercício 02 
  - Altere uma das FNs para utilizar Arrow Function
  

  observação:   
  fórmula PIB → (produto + serviço) / habitantes
  Paraná → produto: 1.7, serviço: 1.2 e habitantes 11.08

  fórmula Densidade Demografica →  area / populacao;
  Paranavaí → area = 1202.3, populacao = 88374;
  */

  print(
      '${Cidade(nome: 'Paranavaí', estado: Estado(nome: 'Paraná', sigla: 'PR', calcularPIB: () {
                var p = 1.7, s = 1.2, h = 11.08;
                return (p + s) / h;
              }), calcularDensidadeDemografica: () {
            /*var area = 1202.3, populacao = 88374;
            var paranavai = area / populacao;
            print('${paranavai}');*/
          })}');
}
