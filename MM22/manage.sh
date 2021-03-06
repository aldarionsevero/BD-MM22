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

Bancos existentes"
mysql -u root --password=1234 -e "show databases";
echo "\

Tabelas existentes"
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	if [[ $i != "Tables_in_MM22" ]]; then
		echo $i
	fi
done

echo "\
======================
Populando tabelas
======================"
mysql -u root --password=1234 MM22 < insercaoRegistros.SQL
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	if [[ $i != "Tables_in_MM22" ]]; then
		showData $i
		echo '---'
	fi
done

echo "\
======================
Alterando dados nas tabelas
======================"
mysql -u root --password=1234 MM22 < alteracaoRegistros.SQL
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	if [[ $i != "Tables_in_MM22" ]]; then
		showData $i
		echo '---'
	fi
done



echo "\
======================
Removendo alguns dados/campos
======================"
mysql -u root --password=1234 MM22 < removeRegistros.SQL
for i in `mysql -u root --password=1234  MM22 -e "show tables"`;  do
	if [[ $i != "Tables_in_MM22" ]]; then
		showData $i
		echo '---'
	fi
done

echo "\
======================
Apresentando uma busca especifica (nome dos motoristas cadastrados)
======================"
mysql -u root --password=1234 MM22 < recuperacaoRegistros.SQL