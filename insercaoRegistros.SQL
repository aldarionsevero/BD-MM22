
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

-- Caminhoes

INSERT INTO Caminhao (Placa,CNH,idFrete)
VALUES ('HJQ5268','046052702',01);

INSERT INTO Caminhao (Placa,CNH,idFrete)
VALUES ('HJU5248','241062010',02);

INSERT INTO Caminhao (Placa,CNH,idFrete)
VALUES ('HNO1268','215565723',03);

-- Manutencoes

INSERT INTO Manutencao (idManutencao,DataManutencao,Descricao,Valor,CNH,idFrete,Placa)
VALUES ('01','2015-02-22','Pneu Furado',20.50,'046052702',01,'HJQ5268');




-- CREATE TABLE Frete(
--   idFrete Integer NOT NULL,
--   Efetivacao Date,
--   PtDescarga Char(30),
--   Producao Double,
--   ValorFrete Double
-- )
-- ;