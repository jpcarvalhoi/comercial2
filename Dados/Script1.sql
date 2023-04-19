ALTER TABLE `comercial2`.`tbcliente` 
ADD COLUMN `codgarra` VARCHAR(20) NULL AFTER `sexo`,
ADD COLUMN `complemento` VARCHAR(45) NULL AFTER `codgarra`,
ADD COLUMN `numero` VARCHAR(15) NULL AFTER `complemento`;


ALTER TABLE `comercial2`.`tbcliente` 
ADD COLUMN `complemento_fat` VARCHAR(45) NULL AFTER `numero`,
ADD COLUMN `numero_fat` VARCHAR(15) NULL AFTER `complemento_fat`;


ALTER TABLE `comercial2`.`tbcliente` 
ADD COLUMN `matricula` VARCHAR(45) NULL AFTER `numero_fat`;

ALTER TABLE `comercial2`.`tbcliente` 
ADD COLUMN `prefeitura` CHAR(1) NULL DEFAULT 'F' AFTER `matricula`;

CREATE TABLE `tbcliente_preco` (
  `idcliente` int(11) NOT NULL,
  `idproduto` int(11) NOT NULL,
  `preco` decimal(15,2) NOT NULL,
  PRIMARY KEY (`idcliente`,`idproduto`),
  CONSTRAINT `fk_tbcliente_preco1` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tbcliente_preco2` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;