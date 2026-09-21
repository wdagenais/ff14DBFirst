

--//Vue utilisé pour des stats generales et des filtres 
CREATE OR ALTER VIEW Personnage.VW_DetailPerso
AS 
	SELECT DISTINCT P.Pseudo, P.DateCreation, P.Classe, P.Race, G.Nom AS [Grande Compagnie], S.Nom AS [Serveur], P.PersonnageId, G.GrandeCompagnieId, S.ServerId
	FROM Personnage.Personnage P
	INNER JOIN Personnage.PersonnageItem IT ON P.PersonnageId = IT.PersonnageId
	INNER JOIN SGC.Server S ON S.ServerId = P.ServerId
	INNER JOIN SGC.GrandeCompagnie G ON P.GrandeCompagnieId = G.GrandeCompagnieId
	GROUP BY Pseudo, DateCreation, Classe, Race, G.Nom, S.Nom, P.PersonnageId, G.GrandeCompagnieId, S.ServerId
GO 


--//Procedure stocké qui permet de changer la grandeCompagnie d'un personnage.

--USE BD_FF14
--GO

--CREATE PROCEDURE Personnage.usp_changerGrandeCompagnie
--		(@PersonnageId int,
--		@GrandeCompagnieId int)
--	AS 
--	BEGIN 
--		UPDATE Personnage.Personnage
--		SET GrandeCompagnieId = @GrandeCompagnieId
--		WHERE PersonnageId = @PersonnageId
--		END
		
		
