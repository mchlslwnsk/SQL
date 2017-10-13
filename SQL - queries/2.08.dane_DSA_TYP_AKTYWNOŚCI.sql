USE [DSA_BIZ02]
GO

DELETE FROM dbo.TYP_AKTYWNOŒCI;
GO

INSERT INTO dbo.[TYP_AKTYWNOŒCI](tak_id, tak_nazwa)
SELECT 1,	'praca' UNION ALL
SELECT 2,	'nauka' UNION ALL
SELECT 3,	'rozrywka' UNION ALL
SELECT 4,	'odpoczynek' UNION ALL
SELECT 5,	'sen' UNION ALL
SELECT 6,	'czynnoœci regularne' UNION ALL
SELECT 7,	'transport' UNION ALL
SELECT 8,   'sport' UNION ALL
SELECT 9,   'inne'
GO

