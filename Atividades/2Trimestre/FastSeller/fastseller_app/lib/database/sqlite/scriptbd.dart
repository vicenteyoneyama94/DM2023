//comando para criar tabela
const criarComida = '''
 CREATE TABLE contato(
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,qtde CHAR(100) NOT NULL
    ,preco VARCHAR(4) NOT NULL 
  )
''';
//array de inserções
const insercoesComida = [
  '''
INSERT INTO comida (nome, qtde, preco)
VALUES ('Salgado Frango','2','5,00',)''',
  '''
INSERT INTO comida (nome, qtde, preco)
VALUES ('Salgado Carne','3','5,00',)''',
  '''
INSERT INTO comida (nome, qtde, preco)
VALUES ('Salgado Frango','2','5,00',)'''];