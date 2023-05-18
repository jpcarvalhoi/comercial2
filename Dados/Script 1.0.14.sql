SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `comercial2`.`tbnota` 
ADD COLUMN `operacao` VARCHAR(1) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NULL DEFAULT NULL AFTER `lote`;

CREATE TABLE IF NOT EXISTS `comercial2`.`tbsistema` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `data` DATE NULL DEFAULT NULL,
  `idcliente` INT(11) NULL DEFAULT NULL,
  `idfornecedor` INT(11) NULL DEFAULT NULL,
  `npedido` VARCHAR(45) NULL DEFAULT NULL,
  `qtde_enviada` INT(11) NULL DEFAULT '0',
  `idproduto` INT(11) NULL DEFAULT NULL,
  `preco_unit` DECIMAL(15,2) NULL DEFAULT '0.00',
  `prev_entrega` DATE NULL DEFAULT NULL,
  `data_entrega` DATE NULL DEFAULT NULL,
  `iddestino` INT(11) NULL DEFAULT NULL,
  `idstatus` INT(11) NULL DEFAULT NULL,
  `qtde_entregue` INT(11) NULL DEFAULT '0',
  `valor_total` DECIMAL(15,2) NULL DEFAULT '0.00',
  `valor_pago` DECIMAL(15,2) NULL DEFAULT '0.00',
  `dia_pagamento` DATE NULL DEFAULT NULL,
  `obs` VARCHAR(300) NULL DEFAULT NULL,
  `vale` DECIMAL(15,2) NULL DEFAULT '0.00',
  `data_vale` DATE NULL DEFAULT NULL,
  `arquivado` VARCHAR(1) NULL DEFAULT 'F',
  PRIMARY KEY (`id`),
  INDEX `idx1` (`arquivado` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;

CREATE TABLE IF NOT EXISTS `comercial2`.`tbsistema_pagamento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `idtbsistema` INT(11) NOT NULL,
  `data` DATE NULL DEFAULT NULL,
  `valor` DECIMAL(15,2) NULL DEFAULT NULL,
  `usuario` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk1_idx` (`idtbsistema` ASC),
  CONSTRAINT `fk1`
    FOREIGN KEY (`idtbsistema`)
    REFERENCES `comercial2`.`tbsistema` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;

CREATE TABLE IF NOT EXISTS `comercial2`.`tbstatus` (
  `idstatus` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstatus`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
