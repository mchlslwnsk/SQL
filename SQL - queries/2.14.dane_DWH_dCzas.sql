USE [DWH_BIZ02]
GO
SET DATEFIRST 1;
SET LANGUAGE Polish;
GO
DELETE FROM [dbo].[dCzas]
GO

DECLARE @data_poczatek date;
DECLARE @data_koniec date;
DECLARE @data date;
DECLARE @i int;
SET @data_poczatek = '2015-10-01';
SET @data_koniec = '2015-10-31';
SET @data = @data_poczatek;
SET @i = 1;

WHILE @data <= @data_koniec
	BEGIN
		INSERT INTO [dbo].[dCzas]
				   ([dCz_id]
				   ,[dCz_dzien]
				   ,[dCz_miesiac]
				   ,[dCz_rok]
				   ,[dCz_dzien_tygodnia]
                   ,[dCz_nazwa_dnia_tygodnia]
				   ,[dCz_nr_miesiaca]
				   ,[dCz_nazwa_miesiaca])
			 VALUES
				   (@i
				   ,@data
				   ,cast(SUBSTRING ( CAST( @data AS varchar(10)) ,1, 8 )+'01' AS date)
				   ,cast(SUBSTRING ( CAST( @data AS varchar(10)) ,1, 4 ) AS int)
				   ,DATEPART(dw,@data)
                   ,DATENAME(weekday,@data)
				   ,MONTH(@data)
				   ,DATENAME(m,@data))
		;
		SET @data = DATEADD(d,1,@data);
		SET @i = @i + 1;
	END;
GO

SELECT * FROM [dbo].[dCzas]
GO