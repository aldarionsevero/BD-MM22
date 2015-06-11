
-- Motoristas

INSERT INTO Motorista (CNH, Nome, CPF, RG, Pai, Mae, Sexo, EstCivil, Naturalidade, Endereco, Telefone, Email, Escolaridade, Cargo)
VALUES ('046052702','Tom B. Erichsen','02222715156','2403322','John Stricke','Maria do Carmo','Masculino','Casado','Brasileiro','SQN 408 BL A AP 208 Brasilia DF','99239068','tom@email.com','segundo grau','motorista');

INSERT INTO Motorista (CNH, Nome, CPF, RG, Pai, Mae, Sexo, EstCivil, Naturalidade, Endereco, Telefone, Email, Escolaridade, Cargo)
VALUES ('241062010','Lucas Severo','57968464773','1598535','Azevedo','Luana','Masculino','Casado','Brasileiro','Nucleo rural lago oeste, rua 11','98521478','lucas@email.com','primeiro grau','motorista');

INSERT INTO Motorista (CNH, Nome, CPF, RG, Pai, Mae, Sexo, EstCivil, Naturalidade, Endereco, Telefone, Email, Escolaridade, Cargo)
VALUES ('215565723','Joao Castro Souza','57303445706','1951951','Martins','Juana','Masculino','Casado','Brasileiro','Parkway, rua 55, casa 301','32547813','Joao@email.com','primeiro grau','motorista');

-- Fretes

INSERT INTO Frete (idFrete,Efetivacao,PtDescarga,Producao,ValorFrete)
VALUES (01,'2015-02-22','Valparaiso',15.3,20.50);

INSERT INTO Frete (idFrete,Efetivacao,PtDescarga,Producao,ValorFrete)
VALUES (02,'2014-03-12','Gama',14.2,25.60);

INSERT INTO Frete (idFrete,Efetivacao,PtDescarga,Producao,ValorFrete)
VALUES (03,'2015-06-06','Rio de Janeiro',33.1,19.35);

-- Caminhoes

INSERT INTO Caminhao (Chassi,CNH,idFrete)
VALUES (5268,'046052702',01);

INSERT INTO Caminhao (Chassi,CNH,idFrete)
VALUES (5248,'241062010',02);

INSERT INTO Caminhao (Chassi,CNH,idFrete)
VALUES (1268,'215565723',03);

-- Manutencoes

INSERT INTO Manutencao (idManutencao,DataManutencao,Descricao,Valor,CNH,idFrete,Chassi)
VALUES (01,'2015-02-22','Pneu Furado',20.50,'046052702',02,5248);

INSERT INTO Manutencao (idManutencao,DataManutencao,Descricao,Valor,CNH,idFrete,Chassi)
VALUES (02,'2015-01-11','Vidro Quebrado',120.50,'019872784',01,5268);

INSERT INTO Manutencao (idManutencao,DataManutencao,Descricao,Valor,CNH,idFrete,Chassi)
VALUES (03,'2015-01-11','Troca de Para-choque',500.00,'019872784',01,5268);


-- Materiais

INSERT INTO Material (idMaterial,Nome,ValorMaterial,TipoMaterial,idFrete)
VALUES (01,'Cobalto',10.23,'Minerio',01);

INSERT INTO Material (idMaterial,Nome,ValorMaterial,TipoMaterial,idFrete)
VALUES (02,'Impureza',0,'Esterio',02);

INSERT INTO Material (idMaterial,Nome,ValorMaterial,TipoMaterial,idFrete)
VALUES (03,'Ouro',25.69,'Minerio',03);
