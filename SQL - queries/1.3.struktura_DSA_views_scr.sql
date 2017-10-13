Create DataBase DSA_BIZ02
go
USE [DSA_BIZ02]
GO
/*
DROP VIEW [dbo].[vAKTYWNO��]
DROP VIEW [dbo].[vFORMA_P�ATNO�CI]
DROP VIEW [dbo].[vKATEGORIA_AKTYWNO�CI]
DROP VIEW [dbo].[vKATEGORIA_WYDATKU]
DROP VIEW [dbo].[vMIEJSCOWO��]
DROP VIEW [dbo].[vOSOBA]
DROP VIEW [dbo].[vSTAN_CYWILNY]
DROP VIEW [dbo].[vSTATUS_ZAWODOWY]
DROP VIEW [dbo].[vTYP_AKTYWNO�CI]
DROP VIEW [dbo].[vTYP_MIEJSCA]
DROP VIEW [dbo].[vTYP_MIEJSCOWO�CI]
DROP VIEW [dbo].[vTYP_WYDATKU]
DROP VIEW [dbo].[vWYDATEK]
GO */

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAKTYWNO��]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[AKTYWNO��] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[AKTYWNO��] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[AKTYWNO��]
GO

CREATE VIEW [dbo].[vFORMA_P�ATNO�CI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[FORMA_P�ATNO�CI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[FORMA_P�ATNO�CI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[FORMA_P�ATNO�CI]
GO

CREATE VIEW [dbo].[vKATEGORIA_AKTYWNO�CI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[KATEGORIA_AKTYWNO�CI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[KATEGORIA_AKTYWNO�CI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[KATEGORIA_AKTYWNO�CI]
GO

CREATE VIEW [dbo].[vKATEGORIA_WYDATKU]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[KATEGORIA_WYDATKU] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[KATEGORIA_WYDATKU] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[KATEGORIA_WYDATKU]
GO

CREATE VIEW [dbo].[vMIEJSCOWO��]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[MIEJSCOWO��] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[MIEJSCOWO��] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[MIEJSCOWO��]
GO

CREATE VIEW [dbo].[vOSOBA]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[OSOBA] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[OSOBA] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[OSOBA]
GO

CREATE VIEW [dbo].[vSTAN_CYWILNY]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[STAN_CYWILNY] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[STAN_CYWILNY] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[STAN_CYWILNY]
GO

CREATE VIEW [dbo].[vSTATUS_ZAWODOWY]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[STATUS_ZAWODOWY] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[STATUS_ZAWODOWY] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[STATUS_ZAWODOWY]
GO

CREATE VIEW [dbo].[vTYP_AKTYWNO�CI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_AKTYWNO�CI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_AKTYWNO�CI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_AKTYWNO�CI]
GO

CREATE VIEW [dbo].[vTYP_MIEJSCA]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_MIEJSCA] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_MIEJSCA] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_MIEJSCA]
GO

CREATE VIEW [dbo].[vTYP_MIEJSCOWO�CI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_MIEJSCOWO�CI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_MIEJSCOWO�CI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_MIEJSCOWO�CI]
GO

CREATE VIEW [dbo].[vTYP_WYDATKU]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_WYDATKU] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_WYDATKU] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_WYDATKU]
GO

CREATE VIEW [dbo].[vWYDATEK]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[WYDATEK] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[WYDATEK] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[WYDATEK]
GO


