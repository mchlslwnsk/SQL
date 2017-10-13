USE [DWH_BIZ02]
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

-- usuniêcie powi¹zañ
ALTER TABLE [dbo].[fAktywnosc] DROP CONSTRAINT [FK_fAktywnosc_dTypMiejsca]
ALTER TABLE [dbo].[fAktywnosc] DROP CONSTRAINT [FK_fAktywnosc_dGodzinaKonca]
ALTER TABLE [dbo].[fAktywnosc] DROP CONSTRAINT [FK_fAktywnosc_dGodzinaPoczatku]
ALTER TABLE [dbo].[fAktywnosc] DROP CONSTRAINT [FK_fAktywnosc_dKategoriaAktywnosci]
ALTER TABLE [dbo].[fAktywnosc] DROP CONSTRAINT [FK_fAktywnosc_dOsoba]
ALTER TABLE [dbo].[fAktywnosc] DROP CONSTRAINT [FK_fAktywnosc_dCzas]
ALTER TABLE [dbo].[fWydatek] DROP CONSTRAINT [FK_fWydatek_dOsoba]
ALTER TABLE [dbo].[fWydatek] DROP CONSTRAINT [FK_fWydatek_dKategoriaAktywnosci]
ALTER TABLE [dbo].[fWydatek] DROP CONSTRAINT [FK_fWydatek_dKategoriaWydatku]
ALTER TABLE [dbo].[fWydatek] DROP CONSTRAINT [FK_fWydatek_dCzas]
ALTER TABLE [dbo].[fWydatek] DROP CONSTRAINT [FK_fWydatek_dFormaPlatnosci]
ALTER TABLE [dbo].[fWydatek] DROP CONSTRAINT [FK_fWydatek_dTypMiejsca]
GO

-- usuniêcie tabel
DROP TABLE [dbo].[dTypMiejsca]
DROP TABLE [dbo].[dGodzina]
DROP TABLE [dbo].[dKategoriaAktywnosci]
DROP TABLE [dbo].[dCzas]
DROP TABLE [dbo].[dKategoriaWydatku]
DROP TABLE [dbo].[dOsoba]
DROP TABLE [dbo].[dFormaPlatnosci]
DROP TABLE [dbo].[fWydatek]
DROP TABLE [dbo].[fAktywnosc]
GO