CREATE DATABASE BaseDadosGeograficos
GO

USE BaseDadosGeograficos
GO

CREATE TABLE dbo.Regioes(
	IdRegiao int NOT NULL,
	CodRegiao varchar(2) NOT NULL,
	NomeRegiao varchar(20) NOT NULL,
	CONSTRAINT PK_Regioes PRIMARY KEY (IdRegiao)
)
GO

CREATE TABLE dbo.Estados(
	SiglaEstado char(2) NOT NULL,
	NomeEstado varchar(20) NOT NULL,
	NomeCapital varchar(20) NOT NULL,
	IdRegiao int NOT NULL,
	CONSTRAINT PK_Estados PRIMARY KEY (SiglaEstado),
	CONSTRAINT FK_Estado_Regiao FOREIGN KEY (IdRegiao) REFERENCES dbo.Regioes(IdRegiao)
)
GO

-- Crie para mim uma estrutura de cidades, lembrando que é um script SQL Server
CREATE TABLE dbo.Cidades(
	IdCidade int NOT NULL,
	NomeCidade varchar(50) NOT NULL,
	SiglaEstado char(2) NOT NULL,
	CONSTRAINT PK_Cidades PRIMARY KEY (IdCidade),
	CONSTRAINT FK_Cidade_Estado FOREIGN KEY (SiglaEstado) REFERENCES dbo.Estados(SiglaEstado)
)
