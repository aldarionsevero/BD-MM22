#!/bin/bash


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
mysql -u root --password=1234  MM22 -e "show tables";
