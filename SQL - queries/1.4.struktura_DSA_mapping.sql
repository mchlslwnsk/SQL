USE [DSA_BIZ02]
GO
/*
DROP TABLE [dbo].[mapping]
GO
*/
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[mapping](
	[map_id] [int] IDENTITY(1,1) NOT NULL,
	[map_status] [char](2) NOT NULL, 	-- 'OK' = dopasowane, 'ND' - nie dopasowane
	[map_dwh_name] [varchar](10) NOT NULL, -- 'DSA', 'DWH'
	[map_dwh_table] [varchar](50) NOT NULL,
	[map_dwh_key] [int] NULL,
	[map_src_name] [varchar](11) NOT NULL,
	[map_src_table] [varchar](50) NOT NULL,
	[map_src_key] [int] NOT NULL,
 CONSTRAINT [PK_mapping] PRIMARY KEY CLUSTERED 
(
	[map_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_mapping] UNIQUE NONCLUSTERED 
(
	[map_dwh_name] ASC,
	[map_dwh_table] ASC,
	[map_dwh_key] ASC,
	[map_src_name] ASC,
	[map_src_table] ASC,
	[map_src_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


