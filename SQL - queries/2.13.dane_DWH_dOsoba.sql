USE [DWH_BIZ02]
GO

DELETE FROM dbo.dOsoba;
GO

INSERT INTO [dbo].[dOsoba] (dOs_id, dOs_imie,dOs_nazwisko, dOs_plec, dOs_data_urodzenia, dOs_stan_cywilny, dOs_status_zawodowy, dOs_miejscowosc)
SELECT 1,'Kamil','Kowalski','M','1991','kawaler','niepracuj¹cy','£ask' UNION ALL
SELECT 2,'Magdalena','Sujka','K','1992','panna','niepracuj¹cy','Radomsko' UNION ALL
SELECT 3,'Micha³', 'Œliwiñski','M','1991','kawaler','niepracuj¹cy','£ódŸ'
GO

USE [DSA_BIZ02]

DELETE FROM dbo.mapping WHERE map_dwh_name = 'DWH_BIZ02' AND map_dwh_table = 'dOsoba';
GO

INSERT INTO [dbo].[mapping]([map_status],[map_dwh_name],[map_dwh_table],[map_dwh_key],[map_src_name],[map_src_table],[map_src_key])
SELECT 'OK','DWH_BIZ02','dOsoba',1,'Z02B1','OSOBA',1 UNION ALL
SELECT 'OK','DWH_BIZ02','dOsoba',2,'Z02B2','OSOBA',1 UNION ALL
SELECT 'OK','DWH_BIZ02','dOsoba',3,'Z02B3','OSOBA',1 

GO
