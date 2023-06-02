class Comida {

  final dynamic id;
  final String nome;
  final int qtde;
  final double preco;

  Comida({
    this.id,
    required this.nome,
    required this.qtde,
    required this.preco
  });

  @override
  String toString() {
    return '''
    $id
    $nome
    $qtde
    $preco
    ''';
  }

}
