USE BD_FF14

--//Une Vue qui prends les information générales des serveurs, personnages ainsi que les grande companies.
GO
CREATE OR ALTER VIEW Personnage.vw_PopulationServeurStat
AS

 SELECT S.Nom AS [Nom du Serveur], S.Region ,G.Nom AS [Nom de la Grande Companie], COUNT(P.PersonnageId) [Nombre de personages]
 FROM Personnage.Personnage P
 INNER JOIN SGC.GrandeCompagnie G ON P.GrandeCompagnieId = G.GrandeCompagnieId
 INNER JOIN SGC.Server S ON P.ServerId = S.ServerId
 GROUP BY S.Nom, G.Nom, S.Region
 ORDER BY COUNT(P.PersonnageId) DESC,S.Nom OFFSET 0 ROWS
GO
