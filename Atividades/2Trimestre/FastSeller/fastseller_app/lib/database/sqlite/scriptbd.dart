//comando para criar tabela
const criarComida = '''
 CREATE TABLE comida(
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,qtde CHAR(100) NOT NULL
    ,preco VARCHAR(4) NOT NULL,
    foto_id INTEGER NOT NULL,
    FOREIGN KEY (foto_id) REFERENCES(id)
  )
'''
'''
  CREATE TABLE foto(
    id INTEGER NOT NULL PRIMARY KEY,
    url VARCHAR(500) NOT NULL
  )
'''
;
//array de inserções
const insercoesComida = [

  '''
  INSERT INTO foto (url)
  VALUES ('https://nutrimassasesalgados.com/wp-content/uploads/2020/05/MG_7094-copiar.jpg'),
  ('https://salgadosdesucesso.com.br/wp-content/uploads/2017/08/melhores-receitas-de-salgados-para-vender.jpg')
  '''

  '''
INSERT INTO comida (nome, qtde, preco)
VALUES ('Salgado Frango','2','5,00',)''',
  '''
INSERT INTO comida (nome, qtde, preco)
VALUES ('Salgado Carne','3','5,00',)''',
  '''
INSERT INTO comida (nome, qtde, preco)
VALUES ('Salgado Frango','2','5,00',)'''];