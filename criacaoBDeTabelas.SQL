/*
MODEL: MYSQL
Created: 27/05/2015
Modified: 11/06/2015
*/

-- Create database section -----------------------------------------------

CREATE DATABASE MM22;
USE MM22;

-- Create tables section -------------------------------------------------

-- Table Motorista

CREATE TABLE Motorista(
  CNH Integer NOT NULL,
  Nome Char(30) NOT NULL,
  CPF Char(20),
  RG Char(20),
  Pai Char(20),
  Mae Char(20),
  Sexo Char(20),
  EstCivil Char(10),
  Naturalidade Char(20),
  Endereco Char(70),
  Telefone Char(10),
  Email Char(15),
  Escolaridade Char(20),
  Cargo Char(20)
)
;

-- Add keys for table Motorista

ALTER TABLE Motorista ADD CONSTRAINT Key1 PRIMARY KEY (CNH)
;

-- Table Caminhao

CREATE TABLE Caminhao(
  Chassi Integer NOT NULL,
  CNH Integer NOT NULL,
  idFrete Integer NOT NULL
)
;

-- Add keys for table Caminhao

ALTER TABLE Caminhao ADD CONSTRAINT Key2 PRIMARY KEY (CNH,idFrete,Chassi)
;

-- Table Manutencao

CREATE TABLE Manutencao(
  idManutencao Integer NOT NULL,
  DataManutencao Date,
  Descricao Char(200),
  Valor Double,
  CNH Integer NOT NULL,
  idFrete Integer NOT NULL,
  Chassi Integer NOT NULL
)
;

-- Add keys for table Manutencao

ALTER TABLE Manutencao ADD CONSTRAINT Key3 PRIMARY KEY (idManutencao,CNH,idFrete,Chassi)
;

-- Table Frete

CREATE TABLE Frete(
  idFrete Integer NOT NULL,
  Efetivacao Date,
  PtDescarga Char(30),
  Producao Double,
  ValorFrete Double
)
;

-- Add keys for table Frete

ALTER TABLE Frete ADD CONSTRAINT Key4 PRIMARY KEY (idFrete)
;

-- Table Material

CREATE TABLE Material(
  idMaterial Integer NOT NULL,
  Nome Char(30) NOT NULL,
  ValorMaterial Double,
  TipoMaterial Char(10),
  idFrete Integer NOT NULL
)
;

-- Add keys for table Material

ALTER TABLE Material ADD CONSTRAINT Key5 PRIMARY KEY (idFrete,idMaterial)
;

-- Create relationships section ------------------------------------------------- 

ALTER TABLE Caminhao ADD CONSTRAINT Possui FOREIGN KEY (CNH) REFERENCES Motorista (CNH)
;

ALTER TABLE Caminhao ADD CONSTRAINT Realiza FOREIGN KEY (idFrete) REFERENCES Frete (idFrete)
;

ALTER TABLE Material ADD CONSTRAINT Comporta FOREIGN KEY (idFrete) REFERENCES Frete (idFrete)
;

ALTER TABLE Manutencao ADD CONSTRAINT Recebe FOREIGN KEY (CNH, idFrete, Chassi) REFERENCES Caminhao (CNH, idFrete, Chassi)
;

