USE BD_FF14
GO

CREATE PROCEDURE Personnage.usp_changerGrandeCompagnie
		(@PersonnageId int,
		@GrandeCompagnieId int)
	AS 
	BEGIN 
		UPDATE Personnage.Personnage
		SET GrandeCompagnieId = @GrandeCompagnieId
		WHERE PersonnageId = @PersonnageId
		END
