# Akula API

## Procedimento para uso da imagem:

* criar um arquivo chamado `dbconfig.yml`
* executar o comando `docker run -p 3000:3000 -d -v [CAMINHO PARA PASTA DO dbconfig.yml]:/opt/db rdemorais/akula-dc-api`

O comando acima executa a imagem expondo a porta `3000`

## Estrutura do arquivo dbconfig.yml

<pre>
user: [usuário do banco]
passwd: [senha]
host: [host do bando]
db: [nome da base]
</pre>