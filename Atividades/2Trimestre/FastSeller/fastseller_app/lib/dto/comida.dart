class Comida {

  final dynamic id;
  final String nome;
  final int qtde;
  final double preco;
  final String fotoComida;

  Comida({
    this.id,
    required this.nome,
    required this.qtde,
    required this.preco,
    required this.fotoComida;
  });

  @override
  String toString() {
    return '''
    $id
    $nome
    $qtde
    $preco
    $fotoComida
    ''';
  }

}
