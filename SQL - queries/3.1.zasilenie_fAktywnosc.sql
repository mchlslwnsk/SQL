DELETE FROM DWH_BIZ02.dbo.fAktywnosc
GO

INSERT INTO DWH_BIZ02.dbo.fAktywnosc
           ([fAk_dCz_id]
           ,[fAk_dOs_id]
           ,[fAk_dKAk_id]
           ,[fAk_dTM_id]
           ,[fAk_dGP_id]
           ,[fAk_dGK_id]
           ,[fAk_czas_trwania]
           ,[fAk_kwota_wydatkow]
           ,[fAk_ilosc_kalorii]
		  /* [fAk_odleglosc]*/
           /*,[fAk_liczba_aktywnosci]*/)

SELECT		[czas_id],
			[osoba_id],
			[KAk_id],
			[TM_id],
			[GP_id],
			[GK_id],
			[czas_trwania],
			[kwota_wydatkow],
			[ilosc_kalorii]
			/*[liczba_aktywnosci]*/

FROM DSA_BIZ02.[dbo].[vfAktywnosc]
/*
where KAk_id not in (select dKAK_id from [DWH_BIZ02].dbo.dKategoriaAktywnosci)
*/
GO
