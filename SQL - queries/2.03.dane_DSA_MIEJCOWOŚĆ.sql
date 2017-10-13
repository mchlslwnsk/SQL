USE [DSA_BIZ02]
GO

DELETE FROM dbo.MIEJSCOWO��;
GO

INSERT INTO dbo.[MIEJSCOWO��](mi_id, mi_nazwa, mi_id_typ_miejscowo�ci)
SELECT 1, '�ask',38 UNION ALL
SELECT 2, 'Radomsko',36 UNION ALL
SELECT 3, '��d�',39 
GO

DELETE FROM dbo.mapping WHERE map_dwh_name = 'DSA_BIZ02' AND map_dwh_table = 'MIEJSCOWO��';
GO

INSERT INTO [dbo].[mapping]([map_status],[map_dwh_name],[map_dwh_table],[map_dwh_key],[map_src_name],[map_src_table],[map_src_key])
SELECT 'OK','DSA_BIZ02','MIEJSCOWO��',1,'Z01B1','MIEJSCOWO��',25 UNION ALL
SELECT 'OK','DSA_BIZ02','MIEJSCOWO��',2,'Z01B1','MIEJSCOWO��',26 UNION ALL
SELECT 'OK','DSA_BIZ02','MIEJSCOWO��',3,'Z01B1','MIEJSCOWO��',24
GO