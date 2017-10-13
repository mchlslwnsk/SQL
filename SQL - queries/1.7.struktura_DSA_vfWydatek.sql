USE [DSA_BIZ02]
GO

DROP VIEW [dbo].[vfWydatek]
GO

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vfWydatek]
AS
SELECT CAST(scr_wydatek.wy_kwota AS DECIMAL(10,2))
																												 suma_wydatkow,
	   1
																												 liczba_wydatkow,
	   (SELECT dwh_dCzas.dCz_id
	      FROM DWH_BIZ02.dbo.dCzas dwh_dCzas
		 WHERE dwh_dCzas.dCz_dzien = CAST(scr_wydatek.wy_czas AS DATE))
																												 czas_id,
	   (SELECT dsa_map_osoba.map_dwh_key
	      FROM DSA_BIZ02.dbo.mapping dsa_map_osoba
		 WHERE dsa_map_osoba.map_dwh_name = 'DWH_BIZ02'
		   AND dsa_map_osoba.map_dwh_table = 'dOsoba'
		   AND dsa_map_osoba.map_src_name = scr_wydatek.Baza
		   AND dsa_map_osoba.map_src_table = 'OSOBA'
		   AND dsa_map_osoba.map_src_key = scr_wydatek.wy_id_osoba)
																												 osoba_id,
	   (SELECT dsa_map_KWy.map_dwh_key
	      FROM DSA_BIZ02.dbo.mapping dsa_map_KWy
		 WHERE dsa_map_KWy.map_dwh_name = 'DWH_BIZ02'
		   AND dsa_map_KWy.map_dwh_table = 'dKategoriaWydatku'
		   AND dsa_map_KWy.map_src_name = scr_wydatek.Baza
		   AND dsa_map_KWy.map_src_table = 'KATEGORIA_WYDATKU'
		   AND dsa_map_KWy.map_src_key = scr_wydatek.wy_id_kategoria_wydatku)
																												 KWy_id,
		scr_wydatek.wy_id_forma_p³atnoœci
																												 FP_id,
	   (SELECT scr_aktywnosc.ak_id_typ_miejsca
	               FROM DSA_BIZ02.dbo.vAKTYWNOŒÆ scr_aktywnosc
		          WHERE scr_aktywnosc.Baza = scr_wydatek.Baza 
                    AND scr_aktywnosc.ak_id = scr_wydatek.wy_id_aktywnoœci)
	   
																												 TM_id,
	   (SELECT dsa_map_KAk.map_dwh_key
	             FROM DSA_BIZ02.dbo.mapping dsa_map_KAk
		        WHERE dsa_map_KAk.map_dwh_name = 'DWH_BIZ02'
		          AND dsa_map_KAk.map_dwh_table = 'dKategoriaAktywnosci'
		          AND dsa_map_KAk.map_src_name = scr_wydatek.Baza
		          AND dsa_map_KAk.map_src_table = 'KATEGORIA_AKTYWNOŒCI'
		          AND dsa_map_KAk.map_src_key = (SELECT scr_aktywnosc.ak_id_kategoria_aktywnoœci
			                                       FROM DSA_BIZ02.dbo.vAKTYWNOŒÆ scr_aktywnosc
						                          WHERE scr_aktywnosc.ak_id = scr_wydatek.wy_id_aktywnoœci
										            AND scr_aktywnosc.Baza = scr_wydatek.Baza))
				   																								 KAk_id


FROM DSA_BIZ02.dbo.[vWYDATEK] scr_wydatek
GO


