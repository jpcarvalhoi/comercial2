INSERT INTO `tbpermissao` (`idtbpermissao`, `descricao`) VALUES ('22', 'Cadastro de Setores');
INSERT INTO `tbpermissao` (`idtbpermissao`, `descricao`) VALUES ('23', 'Cadastro de Status');

CREATE TABLE `tbstatus` (
  `idstatus` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idstatus`));