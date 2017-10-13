USE [DWH_BIZ02]
GO

DELETE FROM dbo.dFormaPlatnosci;
GO

INSERT INTO dbo.dFormaPlatnosci(dFP_id, dFP_nazwa)
SELECT 1,	'gotówka' UNION ALL
SELECT 2,	'karta' UNION ALL
SELECT 3,	'przelew' UNION ALL
SELECT 4,	'inne';
GO
