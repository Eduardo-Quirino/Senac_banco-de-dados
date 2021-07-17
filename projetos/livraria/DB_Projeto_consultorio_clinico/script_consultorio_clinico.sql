CREATE TABLE Paciente (
  Cod_paciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome_paciente VARCHAR(45) BINARY NULL,
  Endereco VARCHAR(45) BINARY NULL,
  PRIMARY KEY(Cod_paciente)
);

CREATE TABLE Medico (
  Cod_medico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome_medico VARCHAR(45) NULL,
  Desc_especialidade VARCHAR(20) NULL,
  PRIMARY KEY(Cod_medico)
);

CREATE TABLE Exame (
  Cod_exame INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Paciente_Cod_paciente INTEGER UNSIGNED NOT NULL,
  Desc_exame VARCHAR(45) NULL,
  Nome_medico VARCHAR(22) NULL,
  PRIMARY KEY(Cod_exame),
  INDEX Exame_FKIndex1(Paciente_Cod_paciente),
  FOREIGN KEY(Paciente_Cod_paciente)
    REFERENCES Paciente(Cod_paciente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Paciente_has_Medico (
  Paciente_Cod_paciente INTEGER UNSIGNED NOT NULL,
  Medico_Cod_medico INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Paciente_Cod_paciente, Medico_Cod_medico),
  INDEX Paciente_has_Medico_FKIndex1(Paciente_Cod_paciente),
  INDEX Paciente_has_Medico_FKIndex2(Medico_Cod_medico),
  FOREIGN KEY(Paciente_Cod_paciente)
    REFERENCES Paciente(Cod_paciente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Medico_Cod_medico)
    REFERENCES Medico(Cod_medico)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


