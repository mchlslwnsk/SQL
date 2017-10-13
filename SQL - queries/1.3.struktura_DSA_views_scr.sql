Create DataBase DSA_BIZ02
go
USE [DSA_BIZ02]
GO
/*
DROP VIEW [dbo].[vAKTYWNOŒÆ]
DROP VIEW [dbo].[vFORMA_P£ATNOŒCI]
DROP VIEW [dbo].[vKATEGORIA_AKTYWNOŒCI]
DROP VIEW [dbo].[vKATEGORIA_WYDATKU]
DROP VIEW [dbo].[vMIEJSCOWOŒÆ]
DROP VIEW [dbo].[vOSOBA]
DROP VIEW [dbo].[vSTAN_CYWILNY]
DROP VIEW [dbo].[vSTATUS_ZAWODOWY]
DROP VIEW [dbo].[vTYP_AKTYWNOŒCI]
DROP VIEW [dbo].[vTYP_MIEJSCA]
DROP VIEW [dbo].[vTYP_MIEJSCOWOŒCI]
DROP VIEW [dbo].[vTYP_WYDATKU]
DROP VIEW [dbo].[vWYDATEK]
GO */

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAKTYWNOŒÆ]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[AKTYWNOŒÆ] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[AKTYWNOŒÆ] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[AKTYWNOŒÆ]
GO

CREATE VIEW [dbo].[vFORMA_P£ATNOŒCI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[FORMA_P£ATNOŒCI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[FORMA_P£ATNOŒCI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[FORMA_P£ATNOŒCI]
GO

CREATE VIEW [dbo].[vKATEGORIA_AKTYWNOŒCI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[KATEGORIA_AKTYWNOŒCI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[KATEGORIA_AKTYWNOŒCI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[KATEGORIA_AKTYWNOŒCI]
GO

CREATE VIEW [dbo].[vKATEGORIA_WYDATKU]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[KATEGORIA_WYDATKU] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[KATEGORIA_WYDATKU] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[KATEGORIA_WYDATKU]
GO

CREATE VIEW [dbo].[vMIEJSCOWOŒÆ]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[MIEJSCOWOŒÆ] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[MIEJSCOWOŒÆ] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[MIEJSCOWOŒÆ]
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

CREATE VIEW [dbo].[vTYP_AKTYWNOŒCI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_AKTYWNOŒCI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_AKTYWNOŒCI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_AKTYWNOŒCI]
GO

CREATE VIEW [dbo].[vTYP_MIEJSCA]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_MIEJSCA] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_MIEJSCA] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_MIEJSCA]
GO

CREATE VIEW [dbo].[vTYP_MIEJSCOWOŒCI]
AS
select * from [DSA_Z02B1].[dbo].[Baza], [DSA_Z02B1].[dbo].[TYP_MIEJSCOWOŒCI] UNION ALL
select * from [DSA_Z02B2].[dbo].[Baza], [DSA_Z02B2].[dbo].[TYP_MIEJSCOWOŒCI] UNION ALL
select * from [DSA_Z02B3].[dbo].[Baza], [DSA_Z02B3].[dbo].[TYP_MIEJSCOWOŒCI]
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


