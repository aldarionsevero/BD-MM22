#!/bin/bash


function showData
{

echo "\

Dados em $1"
mysql -u root --password=1234 MM22 -e "select * from $1";
}

echo "\

Bancos existentes"
mysql -u root --password=1234 -e "show databases";

echo "\

Limpa Banco"
mysql -u root --password=1234 < limpaBanco.SQL

echo "\

Bancos existentes"
mysql -u root --password=1234 -e "show databases";

echo "\

Cria Banco com tabelas"
mysql -u root --password=1234 < criacaoBDeTabelas.SQL

echo "\

Bancos e tabelas existentes"
mysql -u root --password=1234 -e "show databases";
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	echo $i
done

echo "\

Populando tabelas"
mysql -u root --password=1234 MM22 < insercaoRegistros.SQL
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	showData $i
	echo '---'
done

echo "\

Removendo alguns dados/campos"
mysql -u root --password=1234 MM22 < removeRegistros.SQL
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	showData $i
	echo '---'
done

echo "\

Apresentando uma busca especifica (nome dos motoristas cadastrados)"
mysql -u root --password=1234 MM22 < recuperacaoRegistros.SQL