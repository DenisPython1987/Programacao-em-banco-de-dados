USE Atividade_pratica_3;


CREATE TABLE IF NOT EXISTS Estado (
  idEstado INT AUTO_INCREMENT NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  UF CHAR(2) NOT NULL,
  PRIMARY KEY (idEstado))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Municipio (
  idMunicipio INT AUTO_INCREMENT NOT NULL,
  Estado_ID INT NULL,
  Nome VARCHAR(80) NOT NULL,
  CodigoIBGE INT NOT NULL,
  PRIMARY KEY (idMunicipio),
  INDEX fk_Municipio_Estado1_idx (`Estado_ID` ASC) VISIBLE,
  CONSTRAINT fk_Municipio_Estado1
    FOREIGN KEY (Estado_ID)
    REFERENCES Estado (idEstado)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS Cliente (
  idCliente INT AUTO_INCREMENT NOT NULL,
  Nome VARCHAR(80) NOT NULL,
  CPF CHAR(11) NOT NULL,
  Celular CHAR(11) NULL,
  EndLogradouro VARCHAR(100) NULL,
  EndNumero VARCHAR(10) NOT NULL,
  EndMunicipio INT NOT NULL,
  EndCEP CHAR(8) NULL,
  Municipio_ID INT NOT NULL,
  PRIMARY KEY (idCliente),
  INDEX fk_Cliente_Municipio1_idx (Municipio_ID ASC) VISIBLE,
  CONSTRAINT fk_Cliente_Municipio1
    FOREIGN KEY (Municipio_ID)
    REFERENCES Municipio (idMunicipio)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS ContaReceber (
  idContaReceber INT AUTO_INCREMENT NOT NULL,
  Cliente_ID INT NULL,
  FaturaVenda_ID INT NULL,
  DataConta DATE NOT NULL,
  DataVencimento INT NOT NULL,
  Valor DECIMAL(18,2) NULL,
  Situacao ENUM('1', '2', '3') NULL,
  Cliente_idCliente INT NOT NULL,
  PRIMARY KEY (idContaReceber),
  INDEX fk_ContaReceber_Cliente_idx (Cliente_ID ASC) VISIBLE,
  CONSTRAINT fk_ContaReceber_Cliente
    FOREIGN KEY (Cliente_ID)
    REFERENCES Cliente (idCliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

