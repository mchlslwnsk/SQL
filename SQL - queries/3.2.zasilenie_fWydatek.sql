DELETE FROM DWH_BIZ02.dbo.fWydatek
GO

INSERT INTO DWH_BIZ02.dbo.fWydatek
           ([fWy_dCz_id]
           ,[fWy_dOs_id]
           ,[fWy_dKWy_id]
           ,[fWy_dFP_id]
		   ,[fWy_dTM_id]
		   ,[fWy_dKAk_id]
		   ,[fWy_kwota]
           /*,[fWy_liczba_wydatkow]*/)
SELECT     czas_id,
           osoba_id,
           KWy_id,
		   FP_id,
		   ISNULL(TM_id,1),  -- 1=brak miejsca
		   ISNULL(KAk_id,59), -- 63 = brak kategorii  
		   suma_wydatkow
		 /*  liczba_wydatkow*/
FROM [DSA_BIZ02].[dbo].vfWydatek
/*
where KWy_id not in (select dKWy_id from [DWH_BIZ02].dbo.[dKategoriaWydatku])*/
GO