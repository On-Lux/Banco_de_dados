CREATE TABLE Empresa (
  idEmpresa INT PRIMARY KEY IDENTITY(1,1),
  nome VARCHAR(30),
  CEP CHAR(9),
  numero INT,
  CNPJ CHAR(18),
  telefone VARCHAR(20)
  );
  
CREATE TABLE usuario (
  idusuario INT PRIMARY KEY IDENTITY(1,1),
  nome VARCHAR(45) ,
  email VARCHAR(100) ,
  senha VARCHAR(20) ,
  fkEmpresa INT ,
  FOREIGN KEY (fkEmpresa) REFERENCES Empresa (idEmpresa));
  
create table setor (
idSetor int primary key IDENTITY(1,1),
nome_setor varchar(50),
fkEmpresa int,
foreign key (fkEmpresa) references empresa(idEmpresa)
);

create table Sensor (
idSensor int primary key IDENTITY(1,1),
nome_sensor varchar(50),
fkSetor int,
foreign key (fkSetor) references setor(idSetor)
);

create table historico (
idHistorico int primary key IDENTITY(1,1),
luminosidade_L float,
data_hora datetime default current_timestamp,
fkSensor int,
foreign key (fkSensor) references sensor(idSensor)
);

