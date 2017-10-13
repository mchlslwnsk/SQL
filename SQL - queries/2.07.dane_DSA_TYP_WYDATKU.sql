USE [DSA_BIZ02]
GO

DELETE FROM dbo.TYP_WYDATKU;
GO

INSERT INTO dbo.[TYP_WYDATKU](twy_id, twy_nazwa)
SELECT 1,	'zdrowie' UNION ALL
SELECT 2,	'wyposa¿enie domu' UNION ALL
SELECT 3,	'garderoba' UNION ALL
SELECT 4,	'transport' UNION ALL
SELECT 5,	'op³aty' UNION ALL
SELECT 6,	'rozrywka' UNION ALL
SELECT 7,	'spo¿ywcze' UNION ALL
SELECT 8,	'kosmetyki' UNION ALL
SELECT 9,   'jedzenie poza domem' UNION ALL
SELECT 10,  'nauka' UNION ALL
SELECT 11,  'inne'
GO

