USE [DSA_BIZ02]
GO

DELETE FROM dbo.STAN_CYWILNY;
GO

INSERT INTO dbo.[STAN_CYWILNY](sc_id, sc_nazwa)
SELECT 4,	'panna/kawaler' UNION ALL
SELECT 5,	'rozwódka/ rozwodnik' UNION ALL
SELECT 6,	'w separacji' UNION ALL
SELECT 7,	'w zwi¹zku ma³¿eñskim' UNION ALL
SELECT 8,	'wdowa/wdowiec'
GO
