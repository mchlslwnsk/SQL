USE [DSA_BIZ02]
GO

DELETE FROM dbo.MIEJSCOWOå∆;
GO

INSERT INTO dbo.[MIEJSCOWOå∆](mi_id, mi_nazwa, mi_id_typ_miejscowoúci)
SELECT 1, '£ask',38 UNION ALL
SELECT 2, 'Radomsko',36 UNION ALL
SELECT 3, '£Ûdü',39 
GO

DELETE FROM dbo.mapping WHERE map_dwh_name = 'DSA_BIZ02' AND map_dwh_table = 'MIEJSCOWOå∆';
GO

INSERT INTO [dbo].[mapping]([map_status],[map_dwh_name],[map_dwh_table],[map_dwh_key],[map_src_name],[map_src_table],[map_src_key])
SELECT 'OK','DSA_BIZ02','MIEJSCOWOå∆',1,'Z01B1','MIEJSCOWOå∆',25 UNION ALL
SELECT 'OK','DSA_BIZ02','MIEJSCOWOå∆',2,'Z01B1','MIEJSCOWOå∆',26 UNION ALL
SELECT 'OK','DSA_BIZ02','MIEJSCOWOå∆',3,'Z01B1','MIEJSCOWOå∆',24
GO