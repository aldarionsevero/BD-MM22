-- alteracao

-- motoristas

UPDATE Motorista
SET Endereco='SQN 408 alterado', Email='john@alterado.com', Cargo='gerente (alterado)'
WHERE CNH='046052702';

UPDATE Motorista
SET Endereco='Nucleo rural alterado', Email='lucas@alterado.com', Cargo='faxineiro (alterado)'
WHERE CNH='241062010';

-- fretes

UPDATE Frete
SET Producao=0, ValorFrete=1
WHERE idFrete=02;

UPDATE Frete
SET Producao=1, ValorFrete=2
WHERE idFrete=03;

-- Caminhoes

UPDATE Caminhao
SET CNH='215565723'
WHERE Chassi=5268; -- altera dono do caminhao

UPDATE Caminhao
SET CNH='241062010'
WHERE Chassi=5248;

-- Manutencoes

UPDATE Manutencao
SET Descricao='dano alterado'
WHERE idManutencao=01;

UPDATE Manutencao
SET Descricao='dano alterado'
WHERE idManutencao=02;

-- Materiais

UPDATE Material
SET Nome='Nome alterado'
WHERE idMaterial=01;

UPDATE Material
SET Nome='Nome alterado'
WHERE idMaterial=02;