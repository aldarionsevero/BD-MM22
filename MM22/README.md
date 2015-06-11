# Trabalho final de Banco de Dados - FGA - UnB

Esse trabalho tem por objetivo a modelagem, projeto conceitual, projeto lógico e implementação é si de um Mini mundo proposto.

## Minimundo de uma mineradora:

Sistema de Mineradora: 
Uma mineradora mantém em sua base de dados, entre outras, uma tabela denominada Cadastro_Materiais, que é usada para armazenar ocadastro dos diversos materiais presentes na mina. A tabela possui dois campos: o campo Material que armazena o nome do material e o campo Classe, que armazena a classe do material, que pode ser Minério ou Estéril. A base de dados também possui uma tabela denominada Apontamento_Produção, que é usada para registrar as viagens efetuadas pelos caminhões que transportam o material. Esta tabela possui os seguintes campos: Eqpto = armazena a placa do caminhão; Efetivacao = armazena o horário em que a viagem foi efetivada (hora da descarga do caminhão); Material = armazena o material transportado pelo caminhão; Pto_Descarga = armazena o nome do local da descarga; Producao = armazena o valor (em toneladas) da carga do caminhão. Além disso, a mineradora mantém informações de todos os motoristas dos caminhões, bem como um arquivo com informações a respeito das manutenções efetuadas nos veículos. Com esta base de dados é possível definir a produção total de material da classe Minério por ponto de descarga, a produção por equipamento de cada classe de materiais durante o mês e qual motorista estragou mais o seu caminhão.

## Diretórios no repositório


O MER e DER referentes ás entidades e relações investigadas para essa base de dados podem ser encontrados na raiz desse repositorio. O script para criação da base de dados e do CRUD para teste do mesmo está na pasta MM22. O código para a criação do LaTeX referente ao dicionário de dados está localizado na pasta DD.

# Localização do repositório:

O repositório pode ser acessado no seguinte link:

https://github.com/aldarionsevero/BD-MM22