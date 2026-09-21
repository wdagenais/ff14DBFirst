
--//Création des tables

CREATE TABLE SGC.Server(
	ServerId int IDENTITY(1,1),
	Nom varchar(25) NOT NULL,
	Region varchar(30) NOT NULL,
	CONSTRAINT PK_ServerId PRIMARY KEY (ServerId)

)

CREATE TABLE SGC.GrandeCompagnie(
	GrandeCompagnieId int IDENTITY(1,1),
	Nom varchar(25) NOT NULL,
	Leaders varchar(40) NOT NULL,
	CONSTRAINT PK_GrandeCompagnieId PRIMARY KEY (GrandeCompagnieId)
)


CREATE TABLE Personnage.Personnage(
	PersonnageId int IDENTITY(1,1),
	GrandeCompagnieId int NULL,
	ServerId int NULL,
	DateCreation Date NOT NULL,
	Pseudo varchar(25),
	Race varchar(15),
	Classe varchar(15),
	CONSTRAINT PK_PersonnageId PRIMARY KEY (PersonnageId)
)


CREATE TABLE Personnage.PersonnageItem(
		PersonnageItemId int IDENTITY(1,1),
		PersonnageId int NULL,
		ItemId int NULL,
		CONSTRAINT PK_PersonnageItemId  PRIMARY KEY (PersonnageItemId)
)


CREATE TABLE Item.Item(
	ItemId int IDENTITY(1,1),
	WeaponId int NULL,
	ConsommableId int NULL,
	Nom varchar(25),
	TypeItem varchar(12),
	Description varchar(65)
	CONSTRAINT PK_ItemId PRIMARY KEY (ItemId)
)


CREATE TABLE Item.Consommable(
	ConsommableId int IDENTITY(1,1),
	Nom varchar(25),
	--ItemId int NULL,
	HpRegenere int DEFAULT 0,
	MpRegenere int DEFAULT 0,
	CONSTRAINT PK_ConsommableId PRIMARY KEY (ConsommableId)
)


CREATE TABLE Item.Weapon(
	WeaponId int IDENTITY,
	--ItemId int NULL,
	Nom varchar(25),
	AutoAttack decimal(15,5) CHECK (AutoAttack >= 1),
	CONSTRAINT PK_WeaponId PRIMARY KEY (WeaponId)
)


--//AJOUT DES FOREIGN_KEY

GO
ALTER TABLE Personnage.Personnage
ADD CONSTRAINT FK_GrandeCompagnie_GrandeCompagnieId FOREIGN KEY(GrandeCompagnieId)
REFERENCES SGC.GrandeCompagnie(GrandeCompagnieId)
ON DELETE CASCADE
GO


GO
ALTER TABLE Personnage.Personnage
ADD CONSTRAINT FK_Server_ServerId FOREIGN KEY(ServerId)
REFERENCES SGC.Server(ServerId)
ON DELETE CASCADE
GO

GO
ALTER TABLE Personnage.PersonnageItem
ADD CONSTRAINT FK_Personnage_PersonnageId FOREIGN KEY(PersonnageId)
REFERENCES Personnage.Personnage(PersonnageId)
ON DELETE CASCADE
GO


GO
ALTER TABLE Personnage.PersonnageItem
ADD CONSTRAINT FK_Item_ItemId FOREIGN KEY(ItemId)
REFERENCES Item.Item(ItemId)
GO



GO
ALTER TABLE Item.Item
ADD CONSTRAINT FK_Weapon_WeaponId FOREIGN KEY(WeaponId)
REFERENCES Item.Weapon(WeaponId)
ON DELETE CASCADE
GO



GO
ALTER TABLE Item.Item
ADD CONSTRAINT FK_Consommable_ConsommableId FOREIGN KEY(ConsommableId)
REFERENCES Item.Consommable(ConsommableId)
ON DELETE CASCADE
GO