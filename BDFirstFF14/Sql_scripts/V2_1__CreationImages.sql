USE BD_FF14
GO
DROP TABLE IF EXISTS Personnage.Profilpic;
CREATE TABLE Personnage.Profilpic(
	ProfilpicID int IDENTITY(1,1),
	PersonnageId int NULL,
	Nom nvarchar (100) NOT NULL,
	Identifiant uniqueidentifier NOT NULL ROWGUIDCOL,
	CONSTRAINT PK_Proficlpic_ProfilpicID  PRIMARY KEY(ProfilpicID)
)

ALTER TABLE Personnage.Profilpic ADD CONSTRAINT UC_Personnage_Identifiant
UNIQUE (Identifiant)
GO


ALTER TABLE Personnage.Profilpic ADD CONSTRAINT DF_Personnage_Identifiant
DEFAULT newid() FOR Identifiant;
GO



ALTER TABLE Personnage.Profilpic ADD
Photo varbinary(max) FILESTREAM NULL
GO





 GO
ALTER TABLE Personnage.Profilpic 
ADD CONSTRAINT FK_Profilpic_PersonnageId FOREIGN KEY(PersonnageId)
REFERENCES Personnage.Personnage(PersonnageId)
ON DELETE CASCADE
GO


ALTER TABLE Personnage.Profilpic
ADD CONSTRAINT UQ_Profilpic_PersonnageId UNIQUE (PersonnageId);