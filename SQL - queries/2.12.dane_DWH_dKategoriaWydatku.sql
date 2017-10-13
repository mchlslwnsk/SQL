USE [DWH_BIZ02]
GO

DELETE FROM dbo.dKategoriaWydatku;
GO

INSERT INTO [dbo].[dKategoriaWydatku] (dKWy_id, dKWy_nazwa, dKWy_typ)
SELECT	1,	'apteka',	1			UNION ALL
SELECT	2,	'wizyta u lekarza',	1	UNION ALL
SELECT	3,	'badania',	1			UNION ALL
SELECT	4,	'buty',	3				UNION ALL
SELECT	5,	'bielizna',	3			UNION ALL
SELECT	6,	'spodnie',	3			UNION ALL
SELECT	7,	'sukienki',	3			UNION ALL
SELECT	8,	'garnitury',	3		UNION ALL
SELECT	9,	'bluzy',	3			UNION ALL
SELECT	10,	'koszulki',	3			UNION ALL
SELECT	11,	'koszule',	3			UNION ALL
SELECT	12,	'spodnice',	3			UNION ALL
SELECT	14,	'lotniczy',	4			UNION ALL
SELECT	16,	'poci�g',4	UNION ALL
SELECT	17,	'meble',	2	UNION ALL
SELECT	18, 'sprz�t rtv',2	UNION ALL
SELECT	19,	'du�y sprz�t agd',	2	UNION ALL
SELECT	20,	'detergenty',	2	UNION ALL
SELECT	21,	'za pr�d'	,5	UNION ALL
SELECT	22,	'za wod�'	,5	UNION ALL
SELECT	23,	'czynsz'	,5	UNION ALL
SELECT	24,	'za telewizje',	5	UNION ALL
SELECT  25,	'za Internet',	5	UNION ALL
SELECT	26,	'abonament telefoniczny',	5	UNION ALL
SELECT	27,	'do�adowanie do telefonu'	,5	UNION ALL
SELECT	28,	'bilety do kina'	,6	UNION ALL
SELECT	29,	'bilety do teatru'	,6	UNION ALL
SELECT	30,	'ksi��ki',	6	UNION ALL
SELECT	31,	'gry'	,6	UNION ALL
SELECT	32,	'p�yty z muzyk�',	6	UNION ALL
SELECT	33,	'pieczywo',	7	UNION ALL
SELECT	34,	'napoje'	,7	UNION ALL
SELECT	35,	's�odycze'	,7	UNION ALL
SELECT	36,	'mi�sa'	,7	UNION ALL
SELECT	37,	'nabia�y',	7	UNION ALL
SELECT	38,	'instant',	7	UNION ALL
SELECT	39,	'chi�skie',	9	UNION ALL
SELECT	40,	'kebab',	9	UNION ALL
SELECT	41,	'budki z fast food'	,9	UNION ALL
SELECT	42,	'pizzerie'	,9	UNION ALL
SELECT	43,	'restauracje',	9	UNION ALL
SELECT	44,	'kursy dokszta�caj�ce',	10	UNION ALL
SELECT	45,	'kursy j�zykowe	',10	UNION ALL
SELECT	46,	'wydruki/ ksera',10	UNION ALL
SELECT	47,	'ma�y sprz�t agd',	2	UNION ALL
SELECT	48,	'samoch�d',	4	UNION ALL
SELECT	49,	'taxi'	,4	UNION ALL
SELECT	50,	'komunikacja miejska',	4	UNION ALL
SELECT	51,	'pks'	,4	UNION ALL
SELECT	52,	'za gaz'	,5	UNION ALL
SELECT	53,	'bary mleczne',	9	UNION ALL
SELECT	54,	'pomoce naukowe',	10	UNION ALL
SELECT	55,	'do cia�a i sk�ry',	8	UNION ALL
SELECT	56,	'do d�oni i paznokci',	8	UNION ALL
SELECT	57,'do w�os�w',	8	UNION ALL
SELECT	58,	'do twarzy',8	

GO

USE [DSA_BIZ02]

DELETE FROM dbo.mapping WHERE map_dwh_name = 'DWH_BIZ02' AND map_dwh_table = 'dKategoriaWydatku';
GO

INSERT INTO [dbo].[mapping]([map_status],[map_dwh_name],[map_dwh_table],[map_dwh_key],[map_src_name],[map_src_table],[map_src_key])
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',1,'Z02B1','KATEGORIA_WYDATKU',1 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',2,'Z02B1','KATEGORIA_WYDATKU',2 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',3,'Z02B1','KATEGORIA_WYDATKU',3 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',4,'Z02B1','KATEGORIA_WYDATKU',4 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',5,'Z02B1','KATEGORIA_WYDATKU',5 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',6,'Z02B1','KATEGORIA_WYDATKU',6 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',7,'Z02B1','KATEGORIA_WYDATKU',7 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',8,'Z02B1','KATEGORIA_WYDATKU',8 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',9,'Z02B1','KATEGORIA_WYDATKU',9 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',10,'Z02B1','KATEGORIA_WYDATKU',10 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',11,'Z02B1','KATEGORIA_WYDATKU',11 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',12,'Z02B1','KATEGORIA_WYDATKU',12 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',14,'Z02B1','KATEGORIA_WYDATKU',14 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',16,'Z02B1','KATEGORIA_WYDATKU',16 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',17,'Z02B1','KATEGORIA_WYDATKU',17 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',18,'Z02B1','KATEGORIA_WYDATKU',18 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',19,'Z02B1','KATEGORIA_WYDATKU',19 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',20,'Z02B1','KATEGORIA_WYDATKU',20 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',21,'Z02B1','KATEGORIA_WYDATKU',21 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',22,'Z02B1','KATEGORIA_WYDATKU',22 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',23,'Z02B1','KATEGORIA_WYDATKU',23 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',24,'Z02B1','KATEGORIA_WYDATKU',24 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',25,'Z02B1','KATEGORIA_WYDATKU',25 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',26,'Z02B1','KATEGORIA_WYDATKU',26 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',27,'Z02B1','KATEGORIA_WYDATKU',27 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',28,'Z02B1','KATEGORIA_WYDATKU',28 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',29,'Z02B1','KATEGORIA_WYDATKU',29 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',30,'Z02B1','KATEGORIA_WYDATKU',30 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',31,'Z02B1','KATEGORIA_WYDATKU',31 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',32,'Z02B1','KATEGORIA_WYDATKU',32 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',33,'Z02B1','KATEGORIA_WYDATKU',33 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',34,'Z02B1','KATEGORIA_WYDATKU',34 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',35,'Z02B1','KATEGORIA_WYDATKU',35 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',36,'Z02B1','KATEGORIA_WYDATKU',36 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',37,'Z02B1','KATEGORIA_WYDATKU',37 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',38,'Z02B1','KATEGORIA_WYDATKU',38 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',39,'Z02B1','KATEGORIA_WYDATKU',39 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',40,'Z02B1','KATEGORIA_WYDATKU',40 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',41,'Z02B1','KATEGORIA_WYDATKU',41 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',42,'Z02B1','KATEGORIA_WYDATKU',42 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',43,'Z02B1','KATEGORIA_WYDATKU',43 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',44,'Z02B1','KATEGORIA_WYDATKU',44 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',45,'Z02B1','KATEGORIA_WYDATKU',45 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',46,'Z02B1','KATEGORIA_WYDATKU',46 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',47,'Z02B1','KATEGORIA_WYDATKU',47 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',48,'Z02B1','KATEGORIA_WYDATKU',48 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',49,'Z02B1','KATEGORIA_WYDATKU',49 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',50,'Z02B1','KATEGORIA_WYDATKU',50 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',51,'Z02B1','KATEGORIA_WYDATKU',51 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',52,'Z02B1','KATEGORIA_WYDATKU',52 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',53,'Z02B1','KATEGORIA_WYDATKU',53 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',51,'Z02B1','KATEGORIA_WYDATKU',54 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',55,'Z02B1','KATEGORIA_WYDATKU',55 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',56,'Z02B1','KATEGORIA_WYDATKU',56 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',57,'Z02B1','KATEGORIA_WYDATKU',57 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',58,'Z02B1','KATEGORIA_WYDATKU',58 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',1,'Z02B2','KATEGORIA_WYDATKU',1 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',2,'Z02B2','KATEGORIA_WYDATKU',2 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',3,'Z02B2','KATEGORIA_WYDATKU',3 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',4,'Z02B2','KATEGORIA_WYDATKU',4 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',5,'Z02B2','KATEGORIA_WYDATKU',5 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',6,'Z02B2','KATEGORIA_WYDATKU',6 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',7,'Z02B2','KATEGORIA_WYDATKU',7 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',8,'Z02B2','KATEGORIA_WYDATKU',8 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',9,'Z02B2','KATEGORIA_WYDATKU',9 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',10,'Z02B2','KATEGORIA_WYDATKU',10 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',11,'Z02B2','KATEGORIA_WYDATKU',11 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',12,'Z02B2','KATEGORIA_WYDATKU',12 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',14,'Z02B2','KATEGORIA_WYDATKU',14 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',16,'Z02B2','KATEGORIA_WYDATKU',16 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',17,'Z02B2','KATEGORIA_WYDATKU',17 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',18,'Z02B2','KATEGORIA_WYDATKU',18 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',19,'Z02B2','KATEGORIA_WYDATKU',19 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',20,'Z02B2','KATEGORIA_WYDATKU',20 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',21,'Z02B2','KATEGORIA_WYDATKU',21 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',22,'Z02B2','KATEGORIA_WYDATKU',22 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',23,'Z02B2','KATEGORIA_WYDATKU',23 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',24,'Z02B2','KATEGORIA_WYDATKU',24 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',25,'Z02B2','KATEGORIA_WYDATKU',25 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',26,'Z02B2','KATEGORIA_WYDATKU',26 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',27,'Z02B2','KATEGORIA_WYDATKU',27 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',28,'Z02B2','KATEGORIA_WYDATKU',28 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',29,'Z02B2','KATEGORIA_WYDATKU',29 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',30,'Z02B2','KATEGORIA_WYDATKU',30 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',31,'Z02B2','KATEGORIA_WYDATKU',31 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',32,'Z02B2','KATEGORIA_WYDATKU',32 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',33,'Z02B2','KATEGORIA_WYDATKU',33 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',34,'Z02B2','KATEGORIA_WYDATKU',34 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',35,'Z02B2','KATEGORIA_WYDATKU',35 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',36,'Z02B2','KATEGORIA_WYDATKU',36 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',37,'Z02B2','KATEGORIA_WYDATKU',37 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',38,'Z02B2','KATEGORIA_WYDATKU',38 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',39,'Z02B2','KATEGORIA_WYDATKU',39 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',40,'Z02B2','KATEGORIA_WYDATKU',40 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',41,'Z02B2','KATEGORIA_WYDATKU',41 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',42,'Z02B2','KATEGORIA_WYDATKU',42 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',43,'Z02B2','KATEGORIA_WYDATKU',43 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',44,'Z02B2','KATEGORIA_WYDATKU',44 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',45,'Z02B2','KATEGORIA_WYDATKU',45 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',46,'Z02B2','KATEGORIA_WYDATKU',46 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',47,'Z02B2','KATEGORIA_WYDATKU',47 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',48,'Z02B2','KATEGORIA_WYDATKU',48 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',49,'Z02B2','KATEGORIA_WYDATKU',49 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',50,'Z02B2','KATEGORIA_WYDATKU',50 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',51,'Z02B2','KATEGORIA_WYDATKU',51 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',52,'Z02B2','KATEGORIA_WYDATKU',52 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',53,'Z02B2','KATEGORIA_WYDATKU',53 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',51,'Z02B2','KATEGORIA_WYDATKU',54 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',55,'Z02B2','KATEGORIA_WYDATKU',55 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',56,'Z02B2','KATEGORIA_WYDATKU',56 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',57,'Z02B2','KATEGORIA_WYDATKU',57 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',58,'Z02B2','KATEGORIA_WYDATKU',58 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',1,'Z02B3','KATEGORIA_WYDATKU',1 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',2,'Z02B3','KATEGORIA_WYDATKU',2 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',3,'Z02B3','KATEGORIA_WYDATKU',3 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',4,'Z02B3','KATEGORIA_WYDATKU',4 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',5,'Z02B3','KATEGORIA_WYDATKU',5 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',6,'Z02B3','KATEGORIA_WYDATKU',6 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',7,'Z02B3','KATEGORIA_WYDATKU',7 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',8,'Z02B3','KATEGORIA_WYDATKU',8 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',9,'Z02B3','KATEGORIA_WYDATKU',9 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',10,'Z02B3','KATEGORIA_WYDATKU',10 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',11,'Z02B3','KATEGORIA_WYDATKU',11 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',12,'Z02B3','KATEGORIA_WYDATKU',12 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',14,'Z02B3','KATEGORIA_WYDATKU',14 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',16,'Z02B3','KATEGORIA_WYDATKU',16 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',17,'Z02B3','KATEGORIA_WYDATKU',17 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',18,'Z02B3','KATEGORIA_WYDATKU',18 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',19,'Z02B3','KATEGORIA_WYDATKU',19 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',20,'Z02B3','KATEGORIA_WYDATKU',20 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',21,'Z02B3','KATEGORIA_WYDATKU',21 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',22,'Z02B3','KATEGORIA_WYDATKU',22 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',23,'Z02B3','KATEGORIA_WYDATKU',23 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',24,'Z02B3','KATEGORIA_WYDATKU',24 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',25,'Z02B3','KATEGORIA_WYDATKU',25 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',26,'Z02B3','KATEGORIA_WYDATKU',26 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',27,'Z02B3','KATEGORIA_WYDATKU',27 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',28,'Z02B3','KATEGORIA_WYDATKU',28 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',29,'Z02B3','KATEGORIA_WYDATKU',29 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',30,'Z02B3','KATEGORIA_WYDATKU',30 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',31,'Z02B3','KATEGORIA_WYDATKU',31 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',32,'Z02B3','KATEGORIA_WYDATKU',32 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',33,'Z02B3','KATEGORIA_WYDATKU',33 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',34,'Z02B3','KATEGORIA_WYDATKU',34 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',35,'Z02B3','KATEGORIA_WYDATKU',35 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',36,'Z02B3','KATEGORIA_WYDATKU',36 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',37,'Z02B3','KATEGORIA_WYDATKU',37 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',38,'Z02B3','KATEGORIA_WYDATKU',38 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',39,'Z02B3','KATEGORIA_WYDATKU',39 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',40,'Z02B3','KATEGORIA_WYDATKU',40 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',41,'Z02B3','KATEGORIA_WYDATKU',41 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',42,'Z02B3','KATEGORIA_WYDATKU',42 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',43,'Z02B3','KATEGORIA_WYDATKU',43 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',44,'Z02B3','KATEGORIA_WYDATKU',44 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',45,'Z02B3','KATEGORIA_WYDATKU',45 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',46,'Z02B3','KATEGORIA_WYDATKU',46 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',47,'Z02B3','KATEGORIA_WYDATKU',47 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',48,'Z02B3','KATEGORIA_WYDATKU',48 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',49,'Z02B3','KATEGORIA_WYDATKU',49 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',50,'Z02B3','KATEGORIA_WYDATKU',50 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',51,'Z02B3','KATEGORIA_WYDATKU',51 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',52,'Z02B3','KATEGORIA_WYDATKU',52 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',53,'Z02B3','KATEGORIA_WYDATKU',53 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',51,'Z02B3','KATEGORIA_WYDATKU',54 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',55,'Z02B3','KATEGORIA_WYDATKU',55 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',56,'Z02B3','KATEGORIA_WYDATKU',56 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',57,'Z02B3','KATEGORIA_WYDATKU',57 UNION ALL
SELECT 'OK','DWH_BIZ02','dKategoriaWydatku',58,'Z02B3','KATEGORIA_WYDATKU',58 

go