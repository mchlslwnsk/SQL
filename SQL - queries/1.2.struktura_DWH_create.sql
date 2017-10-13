Create DataBase DWH_BIZ02
go
USE [DWH_BIZ02]
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[fWydatek](
	[fWy_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fWy_dCz_id] [int] NOT NULL,
	[fWy_dOs_id] [int] NOT NULL,
	[fWy_dKWy_id] [int] NOT NULL,
	[fWy_dFP_id] [int] NOT NULL,
	[fWy_dTM_id] [int] NOT NULL,
	[fWy_dKAk_id] [int] NOT NULL,
	[fWy_kwota] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_fWydatek] PRIMARY KEY CLUSTERED 
(
	[fWy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/* zapytaæ siê o to*/
CREATE TABLE [dbo].[fAktywnosc](
	[fAk_id] [bigint] IDENTITY(1,1) NOT NULL,
	[fAk_dCz_id] [int] NOT NULL,
	[fAk_dOs_id] [int] NOT NULL,
	[fAk_dKAk_id] [int] NOT NULL,
	[fAk_dTM_id] [int] NOT NULL,
	[fAk_dGP_id] [int] NOT NULL,
	[fAk_dGK_id] [int] NOT NULL,
	[fAk_czas_trwania] [decimal](10, 2) NOT NULL,
	[fAk_kwota_wydatkow] [decimal](10, 2) NOT NULL,
	[fAk_ilosc_kalorii] [decimal](10, 0) NOT NULL,
	[fAk_odleglosc] [decimal](6, 0) NULL,
 CONSTRAINT [PK_fAktywnosc] PRIMARY KEY CLUSTERED 
(
	[fAk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[dTypMiejsca](
	[dTM_id] [int] NOT NULL,
	[dTM_nazwa] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_dTypMiejsca] PRIMARY KEY CLUSTERED 
(
	[dTM_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[dGodzina](
	[dGo_id] [int] NOT NULL,
	[dGo_godzina] [smallint] NOT NULL,
	[dGo_pora_dnia] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dGodzina] PRIMARY KEY CLUSTERED 
(
	[dGo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO 



CREATE TABLE [dbo].[dOsoba](
	[dOs_id] [int] NOT NULL,
	[dOs_imie] [nvarchar](81) NOT NULL,
	[dOs_nazwisko] [nvarchar](81) NOT NULL,
	[dOs_plec] [nchar](1) NOT NULL,
	[dOs_data_urodzenia] [int] NOT NULL,
	[dOs_wiek] AS 2015-[dOs_data_urodzenia],
	[dOs_stan_cywilny] [nvarchar](20) NOT NULL,
	[dOs_status_zawodowy] [nvarchar](20) NOT NULL,
	[dOs_miejscowosc] [nvarchar](30) NOT NULL
    
 CONSTRAINT [PK_dOsoba] PRIMARY KEY CLUSTERED 
(
	[dOs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[dKategoriaWydatku](
	[dKWy_id] [int] NOT NULL,
	[dKWy_nazwa] [nvarchar](50) NULL,
	[dKWy_typ] [int] NOT NULL,
 CONSTRAINT [PK_dKategoriaWydatku] PRIMARY KEY CLUSTERED 
(
	[dKWy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[dKategoriaAktywnosci](
	[dKAk_id] [int] NOT NULL,
	[dKAk_nazwa] [nvarchar](50) NULL,
	[dKAk_typ] [int] NOT NULL,
 CONSTRAINT [PK_dKategoriaAktywnosci] PRIMARY KEY CLUSTERED 
(
	[dKAk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[dCzas](
	[dCz_id] [int] NOT NULL,
	[dCz_dzien] [date] NOT NULL,
	[dCz_miesiac] [date] NOT NULL,
	[dCz_rok] [int] NOT NULL,
	[dCz_dzien_tygodnia] [smallint] NOT NULL,
	[dCz_nazwa_dnia_tygodnia] [nvarchar](12) NOT NULL,
	[dCz_nr_miesiaca] [smallint] NOT NULL,
	[dCz_nazwa_miesiaca] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_dCzas] PRIMARY KEY CLUSTERED 
(
	[dCz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[dFormaPlatnosci](
	[dFP_id] [int] NOT NULL,
	[dFP_nazwa] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_dFormaPlatnosci] PRIMARY KEY CLUSTERED 
(
	[dFP_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- tabele tworzenie powi¹zañ
ALTER TABLE [dbo].[fAktywnosc]  WITH CHECK ADD  CONSTRAINT [FK_fAktywnosc_dCzas] FOREIGN KEY([fAk_dCz_id]) REFERENCES [dbo].[dCzas] ([dCz_id])
ALTER TABLE [dbo].[fAktywnosc] CHECK CONSTRAINT [FK_fAktywnosc_dCzas]
ALTER TABLE [dbo].[fAktywnosc]  WITH CHECK ADD  CONSTRAINT [FK_fAktywnosc_dKategoriaAktywnosci] FOREIGN KEY([fAk_dKAk_id]) REFERENCES [dbo].[dKategoriaAktywnosci] ([dKAk_id])
ALTER TABLE [dbo].[fAktywnosc] CHECK CONSTRAINT [FK_fAktywnosc_dKategoriaAktywnosci]
ALTER TABLE [dbo].[fAktywnosc]  WITH CHECK ADD  CONSTRAINT [FK_fAktywnosc_dOsoba] FOREIGN KEY([fAk_dOs_id]) REFERENCES [dbo].[dOsoba] ([dOs_id])
ALTER TABLE [dbo].[fAktywnosc] CHECK CONSTRAINT [FK_fAktywnosc_dOsoba]
ALTER TABLE [dbo].[fAktywnosc]  WITH CHECK ADD  CONSTRAINT [FK_fAktywnosc_dGodzinaPoczatku] FOREIGN KEY([fAk_dGP_id]) REFERENCES [dbo].[dGodzina] ([dGo_id])
ALTER TABLE [dbo].[fAktywnosc] CHECK CONSTRAINT [FK_fAktywnosc_dGodzinaPoczatku]
ALTER TABLE [dbo].[fAktywnosc]  WITH CHECK ADD  CONSTRAINT [FK_fAktywnosc_dGodzinaKonca] FOREIGN KEY([fAk_dGK_id]) REFERENCES [dbo].[dGodzina] ([dGo_id])
ALTER TABLE [dbo].[fAktywnosc] CHECK CONSTRAINT [FK_fAktywnosc_dGodzinaKonca]
ALTER TABLE [dbo].[fAktywnosc]  WITH CHECK ADD  CONSTRAINT [FK_fAktywnosc_dTypMiejsca] FOREIGN KEY([fAk_dTM_id]) REFERENCES [dbo].[dTypMiejsca] ([dTM_id])
ALTER TABLE [dbo].[fAktywnosc] CHECK CONSTRAINT [FK_fAktywnosc_dTypMiejsca]
ALTER TABLE [dbo].[fWydatek]  WITH CHECK ADD  CONSTRAINT [FK_fWydatek_dCzas] FOREIGN KEY([fWy_dCz_id]) REFERENCES [dbo].[dCzas] ([dCz_id])
ALTER TABLE [dbo].[fWydatek] CHECK CONSTRAINT [FK_fWydatek_dCzas]
ALTER TABLE [dbo].[fWydatek]  WITH CHECK ADD  CONSTRAINT [FK_fWydatek_dKategoriaWydatku] FOREIGN KEY([fWy_dKWy_id]) REFERENCES [dbo].[dKategoriaWydatku] ([dKWy_id])
ALTER TABLE [dbo].[fWydatek] CHECK CONSTRAINT [FK_fWydatek_dKategoriaWydatku]
ALTER TABLE [dbo].[fWydatek]  WITH CHECK ADD  CONSTRAINT [FK_fWydatek_dOsoba] FOREIGN KEY([fWy_dOs_id]) REFERENCES [dbo].[dOsoba] ([dOs_id])
ALTER TABLE [dbo].[fWydatek] CHECK CONSTRAINT [FK_fWydatek_dOsoba]
ALTER TABLE [dbo].[fWydatek]  WITH CHECK ADD  CONSTRAINT [FK_fWydatek_dTypMiejsca] FOREIGN KEY([fWy_dTM_id]) REFERENCES [dbo].[dTypMiejsca] ([dTM_id])
ALTER TABLE [dbo].[fWydatek] CHECK CONSTRAINT [FK_fWydatek_dTypMiejsca]
ALTER TABLE [dbo].[fWydatek]  WITH CHECK ADD  CONSTRAINT [FK_fWydatek_dKategoriaAktywnosci] FOREIGN KEY([fWy_dKAk_id]) REFERENCES [dbo].[dKategoriaAktywnosci] ([dKAk_id])
ALTER TABLE [dbo].[fWydatek] CHECK CONSTRAINT [FK_fWydatek_dKategoriaAktywnosci]
ALTER TABLE [dbo].[fWydatek]  WITH CHECK ADD  CONSTRAINT [FK_fWydatek_dFormaPlatnosci] FOREIGN KEY([fWy_dFP_id]) REFERENCES [dbo].[dFormaPlatnosci] ([dFP_id])
ALTER TABLE [dbo].[fWydatek] CHECK CONSTRAINT [FK_fWydatek_dFormaPlatnosci]
GO
