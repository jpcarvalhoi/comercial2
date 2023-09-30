ALTER TABLE `tbsistema` 
ADD COLUMN `idsetor` INT NULL AFTER `arquivado`;


ALTER TABLE `tbsistema` 
ADD COLUMN `lote` VARCHAR(20) NULL AFTER `idsetor`,
ADD COLUMN `empenho` VARCHAR(20) NULL AFTER `lote`,
ADD COLUMN `data_limite` DATE NULL AFTER `empenho`,
ADD COLUMN `ordem_producao` VARCHAR(20) NULL AFTER `data_limite`;

ALTER TABLE `tbsistema` 
ADD COLUMN `idresponsavel` INT NULL AFTER `ordem_producao`;


ALTER TABLE `tbfornecedor` 
ADD COLUMN `vale_data` DATE NULL AFTER `dtultimo_contato`,
ADD COLUMN `vale_valor` DECIMAL(15,2) NULL AFTER `vale_data`;

