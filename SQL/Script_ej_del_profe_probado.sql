# Creando la base de datos
CREATE DATABASE Folha;
USE Folha; # Eligiendo la bd que usare

CREATE TABLE Funcionarios ( #creando la tabla y sus respectivos campos o atributos
  Id INT NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  Cpf VARCHAR(14) NOT NULL,
  Endereco VARCHAR(200) NULL,
  PRIMARY KEY (Id),
  UNIQUE INDEX Idx_Cpf (Cpf ASC));
  
 CREATE TABLE Dependentes (
  Id INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Funcionarios_Id INT NOT NULL,
  PRIMARY KEY (Id),
  INDEX Fk_Dependentes_Funcionarios_idx (Funcionarios_Id ASC), # creando llave extrangera
  CONSTRAINT fk_Dependentes_Funcionarios FOREIGN KEY (Funcionarios_Id) REFERENCES Funcionarios (Id)); 
  
  # ingresando datos a la bd en tabla funcionarios
  INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(1,'Alberto Maidana','003.985.323-90','Marta Da Silva 90');  
  INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(2,'Roberto Almeida','444.985.323-90','Rua Sem Fim 988');
  
  # Modificando datos ingresados previamente
  UPDATE Funcionarios SET Nome = 'Marcelo Castro', Cpf = '900.576.977-90', Endereco = 'Atilio da Costa 45' 
  WHERE Id = 2;

# Eliminando el registro 2 de la tabla Funcionarios
DELETE FROM Funcionarios WHERE Id = 2;

# ingresando datos a la bd en tabla Dependentes
INSERT INTO Dependentes (Nome,Funcionarios_Id) VALUES ( 'Roberta Maidana',1);

DELETE FROM Funcionarios WHERE Id = 1;

# Eliminando el registro 1 de la tabla Dependentes
DELETE FROM Dependentes WHERE Funcionarios_Id = 1;

DELETE FROM Funcionarios WHERE Id = 1;

SELECT * FROM Funcionarios;

SELECT Id,Nome,Cpf,Endereco FROM Funcionarios;

# visualizando mediante consulta solo la columna Nome de la tabla funcionarios
SELECT Nome FROM Funcionarios;

# visualizando mediante consulta todas las columnas de la tabla funcionarios
SELECT Id, Nome, Cpf, Endereco FROM Funcionarios;

SELECT Id,Nome,Cpf,Endereco FROM Funcionarios WHERE Id = 1;

INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(1,'Alberto Maidana','003.985.323-90','Marta Da Silva 90');
INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(2,'Roberto Almeida','444.985.323-90','Rua Sem Fim 988');

SELECT Id,Nome,Cpf,Endereco FROM Funcionarios;

# Adicionales hechas por mi ---------------------------------------------------------------------------------
INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(3,'He3ctor Oliva','3.304.879-4','Arturo Nuñez 155');  
INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(4,'Richard Oliva','2.745.658-2','Ansina 1165');
INSERT INTO Dependentes (Nome,Funcionarios_Id) VALUES ( 'Maria Cristina Silva',2);
INSERT INTO Dependentes (Nome,Funcionarios_Id) VALUES ( 'Adriana Pereira',3);

# Corrijo el error en dato ingresado
UPDATE funcionarios
SET Nome = 'Hector Oliva',
Cpf ='3.304.879-4',
Endereco='Arturo Nuñez 155'
WHERE Id = 3;
# ---------------------------------

SELECT Id, Nome FROM Funcionarios;

SELECT * FROM Funcionarios;

INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(5,'Hector Oliva','3.303.879-4','Arturo Nuñez 154');  

SELECT DISTINCT Nome FROM funcionarios;

DELETE FROM funcionarios WHERE Id = 5;

SELECT Nome FROM funcionarios WHERE Nome='Hector Oliva';

SELECT Id,Nome,Cpf FROM funcionarios WHERE Nome='Hector Oliva';

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Nome <> 'Hector Oliva';

SELECT funcionarios.* FROM funcionarios WHERE (funcionarios.Nome <> 'Hector Oliva') AND (funcionarios.Nome <> 'RIchard Oliva');

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Nome BETWEEN 'Hector Oliva' AND 'Richard Oliva';

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Id BETWEEN 2 AND 4;

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Nome BETWEEN 'Hector Oliva' AND 'Roberto Almeida';

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Id IN (1,3,4);

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Nome LIKE 'Hec%';

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Cpf LIKE '3.30%';

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Nome LIKE '%Oliva';

SELECT funcionarios.* FROM funcionarios WHERE funcionarios.Nome LIKE '_ector Oliva';

# ---------------------------------
UPDATE funcionarios
SET Nome = 'Vinicius Oliva',
Cpf ='2.745.698-2',
Endereco= NULL
WHERE Id = 5;
# ---------------------------------

SELECT Id,Nome,Endereco FROM funcionarios WHERE Endereco IS NULL;

# ---------------------------------
UPDATE funcionarios
SET Nome = 'Fabian Oliva',
Cpf ='2.745.698-2',
Endereco = NULL
WHERE Id = 3;
# ---------------------------------

SELECT Id,Nome,Endereco FROM funcionarios WHERE Endereco IS NULL;

SELECT Nome AS N FROM funcionarios; # implementando un alises
SELECT Nome,Cpf FROM funcionarios AS N; # usando el alises

