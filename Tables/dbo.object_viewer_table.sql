CREATE TABLE [dbo].[object_viewer_table] (
  [column1] [int] NOT NULL,
  [column2] [int] NULL,
  PRIMARY KEY CLUSTERED ([column1])
)
ON [PRIMARY]
GO

EXEC sp_bindrule @rulename = N'dbo.rule1', @objname = N'dbo.object_viewer_table.column2'
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[dml_trigger1]
ON [dbo].[object_viewer_table]
AFTER UPDATE
AS select 1;
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[dml_trigger2_disabled]
ON [dbo].[object_viewer_table]
AFTER UPDATE
AS select 1;
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[trg_AfterInsert]
ON [object_viewer_table]
AFTER INSERT
AS
BEGIN
  EXEC depends_procedure;
END;
GO

DISABLE TRIGGER [dbo].[dml_trigger2_disabled] ON [dbo].[object_viewer_table]
GO