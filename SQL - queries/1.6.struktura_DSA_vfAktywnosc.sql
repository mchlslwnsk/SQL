USE [DSA_BIZ02]
GO

DROP VIEW [dbo].[vfAktywnosc]
GO

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vfAktywnosc]
AS
SELECT CAST(CAST(scr_aktywnosc.ak_czas_koniec - scr_aktywnosc.ak_czas_start AS FLOAT)*24 AS DECIMAL(10,2))
																												 czas_trwania,
       (SELECT ISNULL(SUM(scr_wydatek.wy_kwota),0)
	      FROM DSA_BIZ02.dbo.vWYDATEK scr_wydatek
		 WHERE scr_aktywnosc.Baza = scr_wydatek.Baza 
           AND scr_aktywnosc.ak_id = scr_wydatek.wy_id_aktywnoœci)
																												 kwota_wydatkow,
	   ISNULL(CAST(scr_aktywnosc.ak_kalorie AS DECIMAL(10,0)),0)
																												 ilosc_kalorii,
	   1
																												 liczba_aktywnosci,
	   (SELECT dwh_dCzas.dCz_id
	      FROM DWH_BIZ02.dbo.dCzas dwh_dCzas
		 WHERE dwh_dCzas.dCz_dzien = CAST(scr_aktywnosc.ak_czas_start AS DATE))
																												 czas_id,
	   (SELECT dsa_map_osoba.map_dwh_key
	      FROM DSA_BIZ02.dbo.mapping dsa_map_osoba
		 WHERE dsa_map_osoba.map_dwh_name = 'DWH_BIZ02'
		   AND dsa_map_osoba.map_dwh_table = 'dOsoba'
		   AND dsa_map_osoba.map_src_name = scr_aktywnosc.Baza
		   AND dsa_map_osoba.map_src_table = 'OSOBA'
		   AND dsa_map_osoba.map_src_key = scr_aktywnosc.ak_id_osoba)
																												 osoba_id,
	   (SELECT dsa_map_KAk.map_dwh_key
	      FROM DSA_BIZ02.dbo.mapping dsa_map_KAk
		 WHERE dsa_map_KAk.map_dwh_name = 'DWH_BIZ02'
		   AND dsa_map_KAk.map_dwh_table = 'dKategoriaAktywnosci'
		   AND dsa_map_KAk.map_src_name = scr_aktywnosc.Baza
		   AND dsa_map_KAk.map_src_table = 'KATEGORIA_AKTYWNOŒCI'
		   AND dsa_map_KAk.map_src_key = scr_aktywnosc.ak_id_kategoria_aktywnoœci)
																												 KAk_id,
	   scr_aktywnosc.ak_id_typ_miejsca
																												 TM_id,
	   (SELECT dwh_dGP.dGo_id
	      FROM DWH_BIZ02.dbo.dGodzina dwh_dGP
		 WHERE dwh_dGP.dGo_godzina = DATEPART(HH, scr_aktywnosc.ak_czas_start))
																											 GP_id,
	   (SELECT dwh_dGK.dGo_id
	      FROM DWH_BIZ02.dbo.dGodzina dwh_dGK
		 WHERE dwh_dGK.dGo_godzina = DATEPART(HH, scr_aktywnosc.ak_czas_koniec))
																											 GK_id
FROM DSA_BIZ02.dbo.vAKTYWNOŒÆ scr_aktywnosc

GO


