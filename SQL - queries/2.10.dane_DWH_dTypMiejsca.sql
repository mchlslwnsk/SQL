USE [DWH_BIZ02]
GO

DELETE FROM dbo.dTypMiejsca;
GO

INSERT INTO dbo.[dTypMiejsca](dTM_id, dTM_nazwa)
/*SELECT 1,   'brak miejsca' UNION ALL*/
SELECT 2,	'dom' UNION ALL
SELECT 3,	'szko³a/uczelnia' UNION ALL
SELECT 4,	'stancja' UNION ALL
SELECT 5,	'praca' UNION ALL
SELECT 6,	'œrodek transportu' UNION ALL
SELECT 7,	'sklep' UNION ALL
SELECT 8,	'centrum handlowe' UNION ALL
SELECT 9,	'klub/pub/restauracja' UNION ALL
SELECT 10,	'obiekty sportowe' UNION ALL
SELECT 11,	'obiekty kulturalne' UNION ALL
SELECT 12,	'przychodnia zdrowia' UNION ALL
SELECT 13,	'park' UNION ALL
SELECT 14,	'inna przestrzeñ miejska' UNION ALL
SELECT 15,	'poza miastem' UNION ALL
SELECT 16,	'inne' UNION ALL
SELECT 17,  'obiekt sakralny' UNION ALL
SELECT 18,  'znajomi'
GO
