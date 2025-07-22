CREATE TABLE [dbo].[object_viewer_t_child] (
  [c1] [int] NOT NULL,
  [c2] [int] NULL,
  [c3] [int] NULL,
  [c4] [int] NULL CONSTRAINT [df_object_viewer_t_child_c4] DEFAULT (1),
  [c5] [int] NULL,
  CONSTRAINT [pk_object_viewer_t_child_c1] PRIMARY KEY CLUSTERED ([c1]),
  CONSTRAINT [uk_object_viewer_t_child_c5] UNIQUE ([c5]),
  CONSTRAINT [ck_object_viewer_t_child_c3] CHECK ([c3]>(100))
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[object_viewer_t_child]
  ADD CONSTRAINT [fk_object_viewer_t_child_c2] FOREIGN KEY ([c2]) REFERENCES [dbo].[object_viewer_table] ([column1])
GO