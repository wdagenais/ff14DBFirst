USE BD_FF14
GO

-- Créer la table Client dans le schéma Clients tel qu'indiqué dans l'énoncé 
CREATE TABLE Clients.Client(
	ClientID int IDENTITY(1,1),
	Nom nvarchar(50),
	Prenom nvarchar(50) NOT NULL,
	Courriel nvarchar(256) NOT NULL,
	MotDePasseHache varbinary(32) NOT NULL,
	Sel varbinary(16)NOT NULL,
	CONSTRAINT PK_ClientID PRIMARY KEY (ClientID)
)
GO

-- Unicité du courriel dans la table

ALTER TABLE Clients.Client
ADD UNIQUE (Courriel);

-- Créer la procédure permettant à un client de s'enregistrer sur la plateforme
GO
CREATE PROCEDURE Clients.USP_CreerClient
	@Nom nvarchar(50),
	@Prenom nvarchar(50),
	@Courriel nvarchar(256),
	@MotDePasse nvarchar(100)
AS
BEGIN
	-- Sel Aléatoire
	DECLARE @MdpSel varbinary(16) = CRYPT_GEN_RANDOM(16);
	
	-- Concaténation mdp et sel
	DECLARE @MdpEtSel nvarchar(116) = CONCAT(@MotDePasse,@MdpSel);
	
	-- Hachage du mot de passe

	DECLARE @MdpHachage varbinary(32) = HASHBYTES('SHA2_256', @MdpEtSel);

	--OPEN SYMMETRIC KEY MaSuperCle
	--DECRYPTION BY CERTIFICATE MonCertificat;
	
	-- Insertion dans la table Client
	INSERT INTO Clients.Client (Nom, Prenom, Courriel,MotDePasseHache, Sel )
	VALUES (@Nom, @Prenom, @Courriel, @MdpHachage, @MdpSel)

	
END
GO

-- Procédure d'authentification
CREATE PROCEDURE Clients.USP_AuthClient
	@Courriel nvarchar(256),
	@MotDePasse nvarchar(100)
AS
BEGIN

	DECLARE @Sel varbinary(16);
	DECLARE @MdpHache varbinary(32);

	SELECT @Sel = Sel , @MdpHache = MotDePasseHache 
	FROM Clients.Client
	WHERE Courriel  = @Courriel;


	IF HASHBYTES('SHA2_256', CONCAT(@MotDePasse, @Sel)) = @MdpHache
	BEGIN
		SELECT * FROM Client WHERE Courriel = @Courriel;
		END



	--IF HASHBYTES('SHA2_256', CONCAT(@MotDePasse, @Sel)) = @MdpHache
	--	BEGIN
	--		OPEN SYMMETRIC KEY MaSuperCle DECRYPTION BY CERTIFICATE MonCertificat;

	--		SELECT
	--		CONVERT (nvarchar(30), DecryptByKey(NAS))
	--		AS MdpEnClaire
	--		FROM Clients.Client WHERE Courriel = @Courriel;

	--		CLOSE SYMMETRIC KEY MaSuperCle;


	--	END

ELSE 
BEGIN 
SELECT TOP 0 * FROM Clients.Client
END

END
GO

-- Insertion de qques Clients
EXEC Clients.USP_CreerClient
@Nom = 'Vallières', @Prenom = 'Chantal', @Courriel = 'chantal.valliere@montpetit.ca', @MotDePasse = '123456'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Adam-Larocque', @Prenom = 'Olivier', @Courriel = 'olivier.adam-larocque@montpetit.ca', @MotDePasse = '456789'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Bournival', @Prenom = 'Laurence', @Courriel = 'laurence.bournival@montpetit.ca', @MotDePasse = 'qwerty'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Brucher-Fafard', @Prenom = 'Guillaume', @Courriel = 'guillaume.brucher-fafard@montpetit.ca', @MotDePasse = 'asdfgh'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Chalifour', @Prenom = 'David', @Courriel = 'david.chalifour@montpetit.ca', @MotDePasse = 'zxcvbn'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Desrochers', @Prenom = 'Félix', @Courriel = 'felix.desrochers@montpetit.ca', @MotDePasse = 'poiuytre'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Gagné', @Prenom = 'Ameni', @Courriel = 'ameni.gagne@montpetit.ca', @MotDePasse = 'lkjhgfds'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Gammoudi', @Prenom = 'Guillaume', @Courriel = 'guillaume.gammoudi@montpetit.ca', @MotDePasse = 'mnbvcxz'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Gobeil-Bouchard', @Prenom = 'François', @Courriel = 'francois.gobeil-bouchard@montpetit.ca', @MotDePasse = '147258'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Milon', @Prenom = 'Graham', @Courriel = 'graham.milon@montpetit.ca', @MotDePasse = '369258'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Morin', @Prenom = 'Mégane', @Courriel = 'megane.morin@montpetit.ca', @MotDePasse = '258741'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Normand', @Prenom = 'Guillaume', @Courriel = 'guillaume.normand@montpetit.ca', @MotDePasse = '987654'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Proulx', @Prenom = 'Bruno', @Courriel = 'bruno.proulx@montpetit.ca', @MotDePasse = '789456'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Rukundo', @Prenom = 'Zachary', @Courriel = 'zachary.rukundo@montpetit.ca', @MotDePasse = '321654'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Tanguay', @Prenom = 'Mario', @Courriel = 'mario.tanguay@montpetit.ca', @MotDePasse = 'plmoknijb'
GO
EXEC Clients.USP_CreerClient
@Nom = 'Gammoudi', @Prenom = 'Jamil', @Courriel = 'jamil.gammoudi@montpetit.ca', @MotDePasse = 'qazwsxedc'
GO
